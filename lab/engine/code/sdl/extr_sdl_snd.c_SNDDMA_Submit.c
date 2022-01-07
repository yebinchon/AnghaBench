
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_UnlockAudioDevice (int ) ;
 int sdlPlaybackDevice ;

void SNDDMA_Submit(void)
{
 SDL_UnlockAudioDevice(sdlPlaybackDevice);
}
