
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_get_audio_session_id ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SDL_Aout ;


 int stub1 (TYPE_1__*) ;

int SDL_AoutGetAudioSessionId(SDL_Aout *aout)
{
    if (aout) {
        if (aout->func_get_audio_session_id) {
            return aout->func_get_audio_session_id(aout);
        }
    }
    return 0;
}
