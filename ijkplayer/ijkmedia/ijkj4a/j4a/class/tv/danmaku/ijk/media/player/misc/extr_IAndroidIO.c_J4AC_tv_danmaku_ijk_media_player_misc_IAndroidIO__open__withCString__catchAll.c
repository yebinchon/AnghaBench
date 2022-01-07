
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * jstring ;
typedef int jobject ;
typedef scalar_t__ jint ;
struct TYPE_7__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__open__catchAll (TYPE_1__**,int ,int *) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,char const*) ;

jint J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__open__withCString__catchAll(JNIEnv *env, jobject thiz, const char *url_cstr__)
{
    jint ret_value = 0;
    jstring url = ((void*)0);

    url = (*env)->NewStringUTF(env, url_cstr__);
    if (J4A_ExceptionCheck__catchAll(env) || !url)
        goto fail;

    ret_value = J4AC_tv_danmaku_ijk_media_player_misc_IAndroidIO__open__catchAll(env, thiz, url);
    if (J4A_ExceptionCheck__catchAll(env)) {
        ret_value = 0;
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &url);
    return ret_value;
}
