
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jstring ;
typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int * J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec (int *,int ,int *,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jstring J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__catchAll(JNIEnv *env, jobject weakThiz, jstring mimeType, jint profile, jint level)
{
    jstring ret_object = J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec(env, weakThiz, mimeType, profile, level);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
