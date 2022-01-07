
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buffer_size_in_bytes; int audio_format; int channel_config; int sample_rate_in_hz; } ;
struct TYPE_8__ {TYPE_2__ spec; } ;
struct TYPE_6__ {scalar_t__ padding; scalar_t__ silence; int size; int format; int channels; int freq; } ;
typedef TYPE_1__ SDL_AudioSpec ;
typedef TYPE_2__ SDL_Android_AudioTrack_Spec ;
typedef TYPE_3__ SDL_Android_AudioTrack ;


 int find_sdl_channel (int ) ;
 int find_sdl_format (int ) ;

void SDL_Android_AudioTrack_get_target_spec(SDL_Android_AudioTrack *atrack, SDL_AudioSpec *sdl_spec)
{
    SDL_Android_AudioTrack_Spec *atrack_spec = &atrack->spec;

    sdl_spec->freq = atrack_spec->sample_rate_in_hz;
    sdl_spec->channels = find_sdl_channel(atrack_spec->channel_config);
    sdl_spec->format = find_sdl_format(atrack_spec->audio_format);
    sdl_spec->size = atrack_spec->buffer_size_in_bytes;
    sdl_spec->silence = 0;
    sdl_spec->padding = 0;
}
