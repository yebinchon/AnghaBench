
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * buffer; } ;


 int Com_Printf (char*) ;
 int SDL_CloseAudioDevice (scalar_t__) ;
 int SDL_INIT_AUDIO ;
 int SDL_QuitSubSystem (int ) ;
 TYPE_1__ dma ;
 scalar_t__ dmapos ;
 scalar_t__ dmasize ;
 int free (int *) ;
 int qfalse ;
 scalar_t__ sdlCaptureDevice ;
 scalar_t__ sdlPlaybackDevice ;
 int snd_inited ;

void SNDDMA_Shutdown(void)
{
 if (sdlPlaybackDevice != 0)
 {
  Com_Printf("Closing SDL audio playback device...\n");
  SDL_CloseAudioDevice(sdlPlaybackDevice);
  Com_Printf("SDL audio playback device closed.\n");
  sdlPlaybackDevice = 0;
 }
 SDL_QuitSubSystem(SDL_INIT_AUDIO);
 free(dma.buffer);
 dma.buffer = ((void*)0);
 dmapos = dmasize = 0;
 snd_inited = qfalse;
 Com_Printf("SDL audio shut down.\n");
}
