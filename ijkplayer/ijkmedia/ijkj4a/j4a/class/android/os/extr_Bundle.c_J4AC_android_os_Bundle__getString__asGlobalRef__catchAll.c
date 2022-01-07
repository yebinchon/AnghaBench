
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jstring ;
typedef int jobject ;
typedef int JNIEnv ;


 int * J4AC_android_os_Bundle__getString__catchAll (int *,int ,int *) ;
 int J4A_DeleteLocalRef__p (int *,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;
 int * J4A_NewGlobalRef__catchAll (int *,int *) ;

jstring J4AC_android_os_Bundle__getString__asGlobalRef__catchAll(JNIEnv *env, jobject thiz, jstring key)
{
    jstring ret_object = ((void*)0);
    jstring local_object = J4AC_android_os_Bundle__getString__catchAll(env, thiz, key);
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
