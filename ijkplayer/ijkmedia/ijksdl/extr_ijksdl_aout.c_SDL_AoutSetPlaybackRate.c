
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_set_playback_rate ) (TYPE_1__*,float) ;} ;
typedef TYPE_1__ SDL_Aout ;


 int stub1 (TYPE_1__*,float) ;

void SDL_AoutSetPlaybackRate(SDL_Aout *aout, float playbackRate)
{
    if (aout) {
        if (aout->func_set_playback_rate)
            aout->func_set_playback_rate(aout, playbackRate);
    }
}
