
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * jstring ;
typedef int * jobject ;
typedef int jint ;
struct TYPE_7__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int * J4AC_android_media_MediaFormat__createVideoFormat__catchAll (TYPE_1__**,int *,int ,int ) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,char const*) ;

jobject J4AC_android_media_MediaFormat__createVideoFormat__withCString__catchAll(JNIEnv *env, const char *mime_cstr__, jint width, jint height)
{
    jobject ret_object = ((void*)0);
    jstring mime = ((void*)0);

    mime = (*env)->NewStringUTF(env, mime_cstr__);
    if (J4A_ExceptionCheck__catchAll(env) || !mime)
        goto fail;

    ret_object = J4AC_android_media_MediaFormat__createVideoFormat__catchAll(env, mime, width, height);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        ret_object = ((void*)0);
        goto fail;
    }

fail:
    J4A_DeleteLocalRef__p(env, &mime);
    return ret_object;
}
