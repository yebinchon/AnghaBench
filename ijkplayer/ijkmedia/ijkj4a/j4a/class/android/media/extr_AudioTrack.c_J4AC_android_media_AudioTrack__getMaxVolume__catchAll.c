
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jfloat ;
typedef int JNIEnv ;


 int J4AC_android_media_AudioTrack__getMaxVolume (int *) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jfloat J4AC_android_media_AudioTrack__getMaxVolume__catchAll(JNIEnv *env)
{
    jfloat ret_value = J4AC_android_media_AudioTrack__getMaxVolume(env);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
