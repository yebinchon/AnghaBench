
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jstring ;
typedef int jobject ;
typedef int JNIEnv ;


 int J4AC_android_os_Bundle__putParcelableArrayList (int *,int ,int ,int ) ;
 int J4A_ExceptionCheck__catchAll (int *) ;

void J4AC_android_os_Bundle__putParcelableArrayList__catchAll(JNIEnv *env, jobject thiz, jstring key, jobject value)
{
    J4AC_android_os_Bundle__putParcelableArrayList(env, thiz, key, value);
    J4A_ExceptionCheck__catchAll(env);
}
