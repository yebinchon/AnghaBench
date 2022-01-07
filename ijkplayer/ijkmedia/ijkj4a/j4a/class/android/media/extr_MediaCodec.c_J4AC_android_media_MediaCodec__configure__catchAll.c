
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaCodec__configure (int *,int ,int ,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_MediaCodec__configure__catchAll(JNIEnv *env, jobject thiz, jobject format, jobject surface, jobject crypto, jint flags)
{
    J4AC_android_media_MediaCodec__configure(env, thiz, format, surface, crypto, flags);
    J4A_ExceptionCheck__catchAll(env);
}
