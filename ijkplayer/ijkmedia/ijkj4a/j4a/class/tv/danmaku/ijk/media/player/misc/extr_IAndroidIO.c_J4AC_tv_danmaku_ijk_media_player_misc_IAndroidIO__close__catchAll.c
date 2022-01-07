
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__close (int *,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__close__catchAll(JNIEnv *env, jobject thiz)
{
    jint ret_value = J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__close(env, thiz);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
