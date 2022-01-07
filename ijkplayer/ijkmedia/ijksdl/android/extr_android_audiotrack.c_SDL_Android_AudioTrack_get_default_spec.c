
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; scalar_t__ buffer_size_in_bytes; int audio_format; int channel_config; scalar_t__ sample_rate_in_hz; int stream_type; } ;
typedef TYPE_1__ SDL_Android_AudioTrack_Spec ;


 int CHANNEL_OUT_STEREO ;
 int ENCODING_PCM_16BIT ;
 int MODE_STREAM ;
 int STREAM_MUSIC ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void SDL_Android_AudioTrack_get_default_spec(SDL_Android_AudioTrack_Spec *spec)
{
    assert(spec);
    spec->stream_type = STREAM_MUSIC;
    spec->sample_rate_in_hz = 0;
    spec->channel_config = CHANNEL_OUT_STEREO;
    spec->audio_format = ENCODING_PCM_16BIT;
    spec->buffer_size_in_bytes = 0;
    spec->mode = MODE_STREAM;
}
