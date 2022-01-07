
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int JNIEnv ;


 int J4AC_android_media_AudioTrack__flush (int *,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_AudioTrack__flush__catchAll(JNIEnv *env, jobject thiz)
{
    J4AC_android_media_AudioTrack__flush(env, thiz);
    J4A_ExceptionCheck__catchAll(env);
}
