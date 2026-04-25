import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions tidak didukung untuk platform ini.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQ3UCof_nnwe5DzaXGig_UDaTWx_oCL7s',
    appId: '1:592044899006:android:c933b66caef09087a37cef',
    messagingSenderId: '592044899006',
    projectId: 'latihan-1-6427c',
    storageBucket: 'latihan-1-6427c.firebasestorage.app',
  );

  // 🔹 ANDROID

  // 🔹 IOS
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR_IOS_API_KEY',
    appId: 'YOUR_IOS_APP_ID',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'YOUR_PROJECT_ID',
    storageBucket: 'YOUR_PROJECT_ID.appspot.com',
    iosBundleId: 'com.example.flutterFirebaseAuth',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC2_bNXcX_1C2BL7HIvxn6kDp43B-j_lGA',
    appId: '1:592044899006:web:f9e5a1faf7df0b7da37cef',
    messagingSenderId: '592044899006',
    projectId: 'latihan-1-6427c',
    authDomain: 'latihan-1-6427c.firebaseapp.com',
    storageBucket: 'latihan-1-6427c.firebasestorage.app',
    measurementId: 'G-GH34XVJJSG',
  );

  // 🔹 WEB
}