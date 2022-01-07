
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int jstring ;
typedef int jobject ;
typedef int jint ;
struct TYPE_8__ {char* (* GetStringUTFChars ) (TYPE_1__**,int ,int *) ;} ;
typedef TYPE_1__* JNIEnv ;


 int J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString (TYPE_1__**,int ,char const*,int ,int ) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int *) ;
 scalar_t__ J4A_ExceptionCheck__throwAny (TYPE_1__**) ;
 int J4A_ReleaseStringUTFChars__p (TYPE_1__**,int ,char const**) ;
 int strlcpy (char*,char const*,int) ;
 char* stub1 (TYPE_1__**,int ,int *) ;

const char *J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString__asCBuffer(JNIEnv *env, jobject weakThiz, const char *mimeType_cstr__, jint profile, jint level, char *out_buf, int out_len)
{
    const char *ret_value = ((void*)0);
    const char *c_str = ((void*)0);
    jstring local_string = J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onSelectCodec__withCString(env, weakThiz, mimeType_cstr__, profile, level);
    if (J4A_ExceptionCheck__throwAny(env) || !local_string) {
        goto fail;
    }

    c_str = (*env)->GetStringUTFChars(env, local_string, ((void*)0) );
    if (J4A_ExceptionCheck__throwAny(env) || !c_str) {
        goto fail;
    }

    strlcpy(out_buf, c_str, out_len);
    ret_value = out_buf;

fail:
    J4A_ReleaseStringUTFChars__p(env, local_string, &c_str);
    J4A_DeleteLocalRef__p(env, &local_string);
    return ret_value;
}
