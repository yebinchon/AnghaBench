
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


 scalar_t__ J4AC_android_media_MediaFormat__getInteger (TYPE_1__**,int ,int *) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__throwAny (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,char const*) ;

jint J4AC_android_media_MediaFormat__getInteger__withCString(JNIEnv *env, jobject thiz, const char *name_cstr__)
{
    jint ret_value = 0;
    jstring name = ((void*)0);

    name = (*env)->NewStringUTF(env, name_cstr__);
    if (J4A_ExceptionCheck__throwAny(env) || !name)
        goto fail;

    ret_value = J4AC_android_media_MediaFormat__getInteger(env, thiz, name);
    if (J4A_ExceptionCheck__throwAny(env)) {
        ret_value = 0;
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &name);
    return ret_value;
}
