
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int J4AC_android_os_Bundle__getInt (int *,int ,int ,int ) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

jint J4AC_android_os_Bundle__getInt__catchAll(JNIEnv *env, jobject thiz, jstring key, jint defaultValue)
{
    jint ret_value = J4AC_android_os_Bundle__getInt(env, thiz, key, defaultValue);
    if (J4A_ExceptionCheck__catchAll(env)) {
        return 0;
    }

    return ret_value;
}
