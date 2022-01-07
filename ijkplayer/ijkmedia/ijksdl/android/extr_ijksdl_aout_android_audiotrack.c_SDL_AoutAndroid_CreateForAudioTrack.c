
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int func_set_playback_rate; int func_get_audio_session_id; int close_audio; int set_volume; int flush_audio; int pause_audio; int open_audio; int free_l; int * opaque_class; TYPE_1__* opaque; } ;
struct TYPE_5__ {float speed; int wakeup_mutex; int wakeup_cond; } ;
typedef TYPE_1__ SDL_Aout_Opaque ;
typedef TYPE_2__ SDL_Aout ;


 TYPE_2__* SDL_Aout_CreateInternal (int) ;
 int SDL_CreateCond () ;
 int SDL_CreateMutex () ;
 int aout_close_audio ;
 int aout_flush_audio ;
 int aout_free_l ;
 int aout_get_audio_session_id ;
 int aout_open_audio ;
 int aout_pause_audio ;
 int aout_set_volume ;
 int func_set_playback_rate ;
 int g_audiotrack_class ;

SDL_Aout *SDL_AoutAndroid_CreateForAudioTrack()
{
    SDL_Aout *aout = SDL_Aout_CreateInternal(sizeof(SDL_Aout_Opaque));
    if (!aout)
        return ((void*)0);

    SDL_Aout_Opaque *opaque = aout->opaque;
    opaque->wakeup_cond = SDL_CreateCond();
    opaque->wakeup_mutex = SDL_CreateMutex();
    opaque->speed = 1.0f;

    aout->opaque_class = &g_audiotrack_class;
    aout->free_l = aout_free_l;
    aout->open_audio = aout_open_audio;
    aout->pause_audio = aout_pause_audio;
    aout->flush_audio = aout_flush_audio;
    aout->set_volume = aout_set_volume;
    aout->close_audio = aout_close_audio;
    aout->func_get_audio_session_id = aout_get_audio_session_id;
    aout->func_set_playback_rate = func_set_playback_rate;

    return aout;
}
