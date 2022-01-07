
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jlong ;
typedef int jint ;
typedef int jbyteArray ;
typedef int JNIEnv ;


 int J4AC_tv_danmaku_ijk_media_player_misc_IMediaDataSource__readAt (int *,int ,int ,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_tv_danmaku_ijk_media_player_misc_IMediaDataSource__readAt__catchAll(JNIEnv *env, jobject thiz, jlong position, jbyteArray buffer, jint offset, jint size)
{
    jint ret_value = J4AC_tv_danmaku_ijk_media_player_misc_IMediaDataSource__readAt(env, thiz, position, buffer, offset, size);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
