
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thiz; } ;
typedef TYPE_1__ SDL_Android_AudioTrack ;
typedef int JNIEnv ;


 int J4AC_AudioTrack__setSpeed (int *,int ,float) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;

void SDL_Android_AudioTrack_setSpeed(JNIEnv *env, SDL_Android_AudioTrack *atrack, float speed)
{
    J4AC_AudioTrack__setSpeed(env, atrack->thiz, speed);
    if (J4A_ExceptionCheck__catchAll(env))
        return;

    return;
}
