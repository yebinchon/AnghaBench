
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jlong ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__seek (int *,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jlong J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__seek__catchAll(JNIEnv *env, jobject thiz, jlong offset, jint whence)
{
    jlong ret_value = J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__seek(env, thiz, offset, whence);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
