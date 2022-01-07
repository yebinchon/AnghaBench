
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaFormat__setInteger (int *,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_MediaFormat__setInteger__catchAll(JNIEnv *env, jobject thiz, jstring name, jint value)
{
    J4AC_android_media_MediaFormat__setInteger(env, thiz, name, value);
    J4A_ExceptionCheck__catchAll(env);
}
