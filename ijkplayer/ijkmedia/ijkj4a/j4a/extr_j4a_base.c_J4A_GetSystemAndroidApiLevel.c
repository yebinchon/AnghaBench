
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int J4AC_android_os_Build__VERSION__SDK_INT__get__catchAll (int *) ;
 int J4A_ALOGI (char*,int) ;

int J4A_GetSystemAndroidApiLevel(JNIEnv *env)
{
    static int SDK_INT = 0;
    if (SDK_INT > 0)
        return SDK_INT;

    SDK_INT = J4AC_android_os_Build__VERSION__SDK_INT__get__catchAll(env);
    J4A_ALOGI("API-Level: %d\n", SDK_INT);
    return SDK_INT;
}
