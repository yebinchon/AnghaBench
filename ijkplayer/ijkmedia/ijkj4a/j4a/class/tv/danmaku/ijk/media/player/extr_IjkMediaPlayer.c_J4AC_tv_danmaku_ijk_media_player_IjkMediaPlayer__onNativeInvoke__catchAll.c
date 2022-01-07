
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int jboolean ;
typedef int JNIEnv ;


 int J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onNativeInvoke (int *,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jboolean J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onNativeInvoke__catchAll(JNIEnv *env, jobject weakThiz, jint what, jobject args)
{
    jboolean ret_value = J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onNativeInvoke(env, weakThiz, what, args);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
