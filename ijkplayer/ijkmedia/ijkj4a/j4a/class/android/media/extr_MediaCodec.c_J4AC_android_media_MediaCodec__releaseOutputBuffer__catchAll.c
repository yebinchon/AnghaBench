
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int jboolean ;
typedef int JNIEnv ;


 int J4AC_android_media_MediaCodec__releaseOutputBuffer (int *,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_media_MediaCodec__releaseOutputBuffer__catchAll(JNIEnv *env, jobject thiz, jint index, jboolean render)
{
    J4AC_android_media_MediaCodec__releaseOutputBuffer(env, thiz, index, render);
    J4A_ExceptionCheck__catchAll(env);
}
