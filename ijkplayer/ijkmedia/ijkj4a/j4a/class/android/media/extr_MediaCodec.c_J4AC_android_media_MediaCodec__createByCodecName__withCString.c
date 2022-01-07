
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * jstring ;
typedef int * jobject ;
struct TYPE_7__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * J4AC_android_media_MediaCodec__createByCodecName (TYPE_1__**,int *) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__throwAny (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,char const*) ;

jobject J4AC_android_media_MediaCodec__createByCodecName__withCString(JNIEnv *env, const char *name_cstr__)
{
    jobject ret_object = ((void*)0);
    jstring name = ((void*)0);

    name = (*env)->NewStringUTF(env, name_cstr__);
    if (J4A_ExceptionCheck__throwAny(env) || !name)
        goto fail;

    ret_object = J4AC_android_media_MediaCodec__createByCodecName(env, name);
    if (J4A_ExceptionCheck__throwAny(env) || !ret_object) {
        ret_object = ((void*)0);
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &name);
    return ret_object;
}
