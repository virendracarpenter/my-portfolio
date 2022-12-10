import 'package:flutter/material.dart';

class CustomTheme extends ChangeNotifier {
  bool isDarkTheme = true;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      hoverColor: const Color(0xFF1a4b6e).withOpacity(0.225),
      cardColor: const Color(0xFF519259),
      primaryColor: const Color(0xff6d72c3),
      primaryColorDark: Colors.white54,
      primaryColorLight: Colors.black,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xff272d2d),
      hoverColor: const Color(0xff6d72c3),
      cardColor: const Color(0xff6d72c3),
      primaryColor: const Color(0xff23ce6b),
      primaryColorDark: const Color(0xff6d72c3),
      primaryColorLight: Colors.white,
    );
  }
}
