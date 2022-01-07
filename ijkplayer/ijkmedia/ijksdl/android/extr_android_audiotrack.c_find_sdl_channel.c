
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Uint8 ;
struct TYPE_4__ {int android_channel; int sdl_channel; } ;
typedef TYPE_1__ AudioChannelMapEntry ;


 int NELEM (TYPE_1__*) ;
 TYPE_1__* g_audio_channel_map ;

__attribute__((used)) static Uint8 find_sdl_channel(int android_channel)
{
    for (int i = 0; i < NELEM(g_audio_channel_map); ++i) {
        AudioChannelMapEntry *entry = &g_audio_channel_map[i];
        if (entry->android_channel == android_channel)
            return entry->sdl_channel;
    }
    return 0;
}
