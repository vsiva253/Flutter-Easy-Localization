import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //import the provider, so that we can use it on the screen we need
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //using tr() after the keyboard will do things automatically
          Text(
            'hello'.tr(),
            style: TextStyle(fontSize: 20),
          ),

          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  languageProvider.changeLanguage(Locale('en', 'US'));
                },
                child: Text('English'),
              ),
              ElevatedButton(
                  onPressed: () {
                    languageProvider.changeLanguage(Locale('hi', 'IN'));
                  },
                  child: Text('Hindi')),
            ],
          )
        ],
      )),
    );
  }
}
