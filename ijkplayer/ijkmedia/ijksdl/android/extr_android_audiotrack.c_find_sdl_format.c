
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int android_format; int sdl_format; } ;
typedef int SDL_AudioFormat ;
typedef TYPE_1__ AudioFormatMapEntry ;


 int AUDIO_INVALID ;
 int NELEM (TYPE_1__*) ;
 TYPE_1__* g_audio_format_map ;

__attribute__((used)) static SDL_AudioFormat find_sdl_format(int android_format)
{
    for (int i = 0; i < NELEM(g_audio_format_map); ++i) {
        AudioFormatMapEntry *entry = &g_audio_format_map[i];
        if (entry->android_format == android_format)
            return entry->sdl_format;
    }
    return AUDIO_INVALID;
}
