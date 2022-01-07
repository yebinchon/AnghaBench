
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Aout ;
typedef int JNIEnv ;


 int ALOGE (char*) ;
 scalar_t__ JNI_OK ;
 scalar_t__ SDL_JNI_SetupThreadEnv (int **) ;
 int aout_thread_n (int *,int *) ;

__attribute__((used)) static int aout_thread(void *arg)
{
    SDL_Aout *aout = arg;

    JNIEnv *env = ((void*)0);

    if (JNI_OK != SDL_JNI_SetupThreadEnv(&env)) {
        ALOGE("aout_thread: SDL_AndroidJni_SetupEnv: failed");
        return -1;
    }

    return aout_thread_n(env, aout);
}
