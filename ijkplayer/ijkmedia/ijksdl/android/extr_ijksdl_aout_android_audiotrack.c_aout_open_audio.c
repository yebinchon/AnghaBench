
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_AudioSpec ;
typedef int SDL_Aout ;
typedef int JNIEnv ;


 int ALOGE (char*) ;
 scalar_t__ JNI_OK ;
 scalar_t__ SDL_JNI_SetupThreadEnv (int **) ;
 int aout_open_audio_n (int *,int *,int const*,int *) ;

__attribute__((used)) static int aout_open_audio(SDL_Aout *aout, const SDL_AudioSpec *desired, SDL_AudioSpec *obtained)
{

    JNIEnv *env = ((void*)0);
    if (JNI_OK != SDL_JNI_SetupThreadEnv(&env)) {
        ALOGE("aout_open_audio: AttachCurrentThread: failed");
        return -1;
    }

    return aout_open_audio_n(env, aout, desired, obtained);
}
