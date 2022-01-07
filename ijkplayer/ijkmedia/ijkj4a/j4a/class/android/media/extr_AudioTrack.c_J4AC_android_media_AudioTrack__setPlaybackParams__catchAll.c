
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int JNIEnv ;


 int J4AC_android_media_AudioTrack__setPlaybackParams (int *,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_AudioTrack__setPlaybackParams__catchAll(JNIEnv *env, jobject thiz, jobject params)
{
    J4AC_android_media_AudioTrack__setPlaybackParams(env, thiz, params);
    J4A_ExceptionCheck__catchAll(env);
}
