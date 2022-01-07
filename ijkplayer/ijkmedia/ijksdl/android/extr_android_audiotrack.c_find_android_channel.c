
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sdl_channel; int android_channel; } ;
typedef TYPE_1__ AudioChannelMapEntry ;


 int CHANNEL_OUT_INVALID ;
 int NELEM (TYPE_1__*) ;
 TYPE_1__* g_audio_channel_map ;

__attribute__((used)) static int find_android_channel(int sdl_channel)
{
    for (int i = 0; i < NELEM(g_audio_channel_map); ++i) {
        AudioChannelMapEntry *entry = &g_audio_channel_map[i];
        if (entry->sdl_channel == sdl_channel)
            return entry->android_channel;
    }
    return CHANNEL_OUT_INVALID;
}
