
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jobjectArray ;
typedef int jobject ;
typedef int JNIEnv ;


 int * J4AC_android_media_MediaCodec__getInputBuffers (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jobjectArray J4AC_android_media_MediaCodec__getInputBuffers__catchAll(JNIEnv *env, jobject thiz)
{
    jobjectArray ret_object = J4AC_android_media_MediaCodec__getInputBuffers(env, thiz);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
