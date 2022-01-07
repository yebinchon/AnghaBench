
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_get_audio_persecond_callbacks ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_Aout ;


 int SDL_AUDIO_MAX_CALLBACKS_PER_SEC ;
 int stub1 (TYPE_1__*) ;

int SDL_AoutGetAudioPerSecondCallBacks(SDL_Aout *aout)
{
    if (aout) {
        if (aout->func_get_audio_persecond_callbacks) {
            return aout->func_get_audio_persecond_callbacks(aout);
        }
    }
    return SDL_AUDIO_MAX_CALLBACKS_PER_SEC;
}
