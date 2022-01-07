
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_AudioTrack__getNativeOutputSampleRate (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_android_media_AudioTrack__getNativeOutputSampleRate__catchAll(JNIEnv *env, jint streamType)
{
    jint ret_value = J4AC_android_media_AudioTrack__getNativeOutputSampleRate(env, streamType);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
