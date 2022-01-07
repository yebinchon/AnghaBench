
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * jstring ;
typedef int jobject ;
typedef int JNIEnv ;


 int * J4AC_android_os_Bundle__getString (int *,int ,int *) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jstring J4AC_android_os_Bundle__getString__catchAll(JNIEnv *env, jobject thiz, jstring key)
{
    jstring ret_object = J4AC_android_os_Bundle__getString(env, thiz, key);
    if (J4A_ExceptionCheck__catchAll(env) || !ret_object) {
        return ((void*)0);
    }

    return ret_object;
}
