
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_AudioTrack__getStreamType (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_android_media_AudioTrack__getStreamType__catchAll(JNIEnv *env, jobject thiz)
{
    jint ret_value = J4AC_android_media_AudioTrack__getStreamType(env, thiz);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
