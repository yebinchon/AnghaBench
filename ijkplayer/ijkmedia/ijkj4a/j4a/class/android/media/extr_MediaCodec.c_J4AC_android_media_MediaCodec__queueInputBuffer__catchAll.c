
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jlong ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaCodec__queueInputBuffer (int *,int ,int ,int ,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_MediaCodec__queueInputBuffer__catchAll(JNIEnv *env, jobject thiz, jint index, jint offset, jint size, jlong presentationTimeUs, jint flags)
{
    J4AC_android_media_MediaCodec__queueInputBuffer(env, thiz, index, offset, size, presentationTimeUs, flags);
    J4A_ExceptionCheck__catchAll(env);
}
