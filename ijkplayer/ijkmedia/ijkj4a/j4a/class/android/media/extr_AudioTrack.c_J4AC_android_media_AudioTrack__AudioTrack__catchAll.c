
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int * J4AC_android_media_AudioTrack__AudioTrack (int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jobject J4AC_android_media_AudioTrack__AudioTrack__catchAll(JNIEnv *env, jint streamType, jint sampleRateInHz, jint channelConfig, jint audioFormat, jint bufferSizeInBytes, jint mode)
{
    jobject ret_object = J4AC_android_media_AudioTrack__AudioTrack(env, streamType, sampleRateInHz, channelConfig, audioFormat, bufferSizeInBytes, mode);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
