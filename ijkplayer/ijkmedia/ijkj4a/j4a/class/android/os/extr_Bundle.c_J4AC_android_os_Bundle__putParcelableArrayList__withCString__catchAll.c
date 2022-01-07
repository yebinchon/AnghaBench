
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * jstring ;
typedef int jobject ;
struct TYPE_7__ {int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int J4AC_android_os_Bundle__putParcelableArrayList__catchAll (TYPE_1__**,int ,int *,int ) ;
 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,char const*) ;

void J4AC_android_os_Bundle__putParcelableArrayList__withCString__catchAll(JNIEnv *env, jobject thiz, const char *key_cstr__, jobject value)
{
    jstring key = ((void*)0);

    key = (*env)->NewStringUTF(env, key_cstr__);
    if (J4A_ExceptionCheck__catchAll(env) || !key)
        goto fail;

    J4AC_android_os_Bundle__putParcelableArrayList__catchAll(env, thiz, key, value);

fail:
    J4A_DeleteLocalRef__p(env, &key);
}
