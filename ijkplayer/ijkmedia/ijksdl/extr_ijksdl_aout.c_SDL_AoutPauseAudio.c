
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* pause_audio ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ SDL_Aout ;


 int stub1 (TYPE_1__*,int) ;

void SDL_AoutPauseAudio(SDL_Aout *aout, int pause_on)
{
    if (aout && aout->pause_audio)
        aout->pause_audio(aout, pause_on);
}
