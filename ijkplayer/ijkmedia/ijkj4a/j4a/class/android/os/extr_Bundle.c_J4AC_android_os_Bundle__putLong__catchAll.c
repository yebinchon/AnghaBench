
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int jobject ;
typedef int jlong ;
typedef int JNIEnv ;


 int J4AC_android_os_Bundle__putLong (int *,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_os_Bundle__putLong__catchAll(JNIEnv *env, jobject thiz, jstring key, jlong value)
{
    J4AC_android_os_Bundle__putLong(env, thiz, key, value);
    J4A_ExceptionCheck__catchAll(env);
}
