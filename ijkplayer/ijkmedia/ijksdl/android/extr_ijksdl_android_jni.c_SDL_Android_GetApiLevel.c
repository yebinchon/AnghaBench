
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int JNIEnv ;


 int ALOGE (char*) ;
 int ALOGI (char*,int) ;
 int J4AC_android_os_Build__VERSION__SDK_INT__get__catchAll (int *) ;
 scalar_t__ JNI_OK ;
 int PROP_VALUE_MAX ;
 scalar_t__ SDL_JNI_SetupThreadEnv (int **) ;
 int __system_property_get (char*,char*) ;
 int atoi (char*) ;
 int memset (char*,int ,int) ;

int SDL_Android_GetApiLevel()
{
    static int SDK_INT = 0;
    if (SDK_INT > 0)
        return SDK_INT;

    JNIEnv *env = ((void*)0);
    if (JNI_OK != SDL_JNI_SetupThreadEnv(&env)) {
        ALOGE("SDL_Android_GetApiLevel: SetupThreadEnv failed");
        return 0;
    }

    SDK_INT = J4AC_android_os_Build__VERSION__SDK_INT__get__catchAll(env);
    ALOGI("API-Level: %d\n", SDK_INT);
    return SDK_INT;







}
