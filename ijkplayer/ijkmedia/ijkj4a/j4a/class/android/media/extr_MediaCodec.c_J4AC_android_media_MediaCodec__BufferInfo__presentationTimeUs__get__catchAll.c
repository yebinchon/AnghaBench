
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jlong ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaCodec__BufferInfo__presentationTimeUs__get (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jlong J4AC_android_media_MediaCodec__BufferInfo__presentationTimeUs__get__catchAll(JNIEnv *env, jobject thiz)
{
    jlong ret_value = J4AC_android_media_MediaCodec__BufferInfo__presentationTimeUs__get(env, thiz);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
