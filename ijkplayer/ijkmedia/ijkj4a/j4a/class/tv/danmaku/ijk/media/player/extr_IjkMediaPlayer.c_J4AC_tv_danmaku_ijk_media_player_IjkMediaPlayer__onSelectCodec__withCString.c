
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * jstring ;
typedef int jobject ;
typedef int jint ;
struct TYPE_7__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec (TYPE_1__**,int ,int *,int ,int ) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__throwAny (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,char const*) ;

jstring J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString(JNIEnv *env, jobject weakThiz, const char *mimeType_cstr__, jint profile, jint level)
{
    jstring ret_object = ((void*)0);
    jstring mimeType = ((void*)0);

    mimeType = (*env)->NewStringUTF(env, mimeType_cstr__);
    if (J4A_ExceptionCheck__throwAny(env) || !mimeType)
        goto fail;

    ret_object = J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec(env, weakThiz, mimeType, profile, level);
    if (J4A_ExceptionCheck__throwAny(env) || !ret_object) {
        ret_object = ((void*)0);
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &mimeType);
    return ret_object;
}
