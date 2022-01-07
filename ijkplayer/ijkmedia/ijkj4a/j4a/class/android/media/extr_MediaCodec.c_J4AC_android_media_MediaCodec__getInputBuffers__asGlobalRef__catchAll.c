
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jobjectArray ;
typedef int jobject ;
typedef int JNIEnv ;


 int * J4AC_android_media_MediaCodec__getInputBuffers__catchAll (int *,int ) ;
 int J4A_DeleteLocalRef__p (int *,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;
 int * J4A_NewGlobalRef__catchAll (int *,int *) ;

jobjectArray J4AC_android_media_MediaCodec__getInputBuffers__asGlobalRef__catchAll(JNIEnv *env, jobject thiz)
{
    jobjectArray ret_object = ((void*)0);
    jobjectArray local_object = J4AC_android_media_MediaCodec__getInputBuffers__catchAll(env, thiz);
    if (J4A_ExceptionCheck__catchAll(env) || !local_object) {
        ret_object = ((void*)0);
        goto fail;
    }

    ret_object = J4A_NewGlobalRef__catchAll(env, local_object);
    if (!ret_object) {
        ret_object = ((void*)0);
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &local_object);
    return ret_object;
}
