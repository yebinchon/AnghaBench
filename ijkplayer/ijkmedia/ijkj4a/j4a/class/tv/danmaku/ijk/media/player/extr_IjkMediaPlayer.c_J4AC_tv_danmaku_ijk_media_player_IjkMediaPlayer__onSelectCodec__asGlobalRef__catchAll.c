
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jstring ;
typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int * J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__catchAll (int *,int ,int *,int ,int ) ;
 int J4A_DeleteLocalRef__p (int *,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;
 int * J4A_NewGlobalRef__catchAll (int *,int *) ;

jstring J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__asGlobalRef__catchAll(JNIEnv *env, jobject weakThiz, jstring mimeType, jint profile, jint level)
{
    jstring ret_object = ((void*)0);
    jstring local_object = J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__catchAll(env, weakThiz, mimeType, profile, level);
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
