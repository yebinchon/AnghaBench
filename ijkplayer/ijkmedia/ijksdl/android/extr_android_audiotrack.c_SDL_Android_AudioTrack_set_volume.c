
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thiz; } ;
typedef TYPE_1__ SDL_Android_AudioTrack ;
typedef int JNIEnv ;


 int J4AC_AudioTrack__setStereoVolume__catchAll (int *,int ,float,float) ;

void SDL_Android_AudioTrack_set_volume(JNIEnv *env, SDL_Android_AudioTrack *atrack, float left_volume, float right_volume)
{
    J4AC_AudioTrack__setStereoVolume__catchAll(env, atrack->thiz, left_volume, right_volume);
}
