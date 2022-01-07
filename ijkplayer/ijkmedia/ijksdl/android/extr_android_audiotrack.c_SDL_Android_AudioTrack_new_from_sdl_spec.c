
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buffer_size_in_bytes; int audio_format; int channel_config; int sample_rate_in_hz; } ;
struct TYPE_6__ {int size; int format; int channels; int freq; } ;
typedef TYPE_1__ SDL_AudioSpec ;
typedef TYPE_2__ SDL_Android_AudioTrack_Spec ;
typedef int SDL_Android_AudioTrack ;
typedef int JNIEnv ;


 int SDL_Android_AudioTrack_get_default_spec (TYPE_2__*) ;
 int * SDL_Android_AudioTrack_new_from_spec (int *,TYPE_2__*) ;
 int find_android_channel (int ) ;
 int find_android_format (int ) ;

SDL_Android_AudioTrack *SDL_Android_AudioTrack_new_from_sdl_spec(JNIEnv *env, const SDL_AudioSpec *sdl_spec)
{
    SDL_Android_AudioTrack_Spec atrack_spec;

    SDL_Android_AudioTrack_get_default_spec(&atrack_spec);
    atrack_spec.sample_rate_in_hz = sdl_spec->freq;
    atrack_spec.channel_config = find_android_channel(sdl_spec->channels);
    atrack_spec.audio_format = find_android_format(sdl_spec->format);
    atrack_spec.buffer_size_in_bytes = sdl_spec->size;

    return SDL_Android_AudioTrack_new_from_spec(env, &atrack_spec);
}
