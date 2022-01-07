
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int jobject ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaFormat__setByteBuffer (int *,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_MediaFormat__setByteBuffer__catchAll(JNIEnv *env, jobject thiz, jstring name, jobject bytes)
{
    J4AC_android_media_MediaFormat__setByteBuffer(env, thiz, name, bytes);
    J4A_ExceptionCheck__catchAll(env);
}
