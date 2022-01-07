
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_AudioTrack__getMinBufferSize (int *,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_android_media_AudioTrack__getMinBufferSize__catchAll(JNIEnv *env, jint sampleRateInHz, jint channelConfig, jint audioFormat)
{
    jint ret_value = J4AC_android_media_AudioTrack__getMinBufferSize(env, sampleRateInHz, channelConfig, audioFormat);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
