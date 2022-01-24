#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SDL_INIT_AUDIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ dma ; 
 scalar_t__ dmapos ; 
 scalar_t__ dmasize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__ sdlCaptureDevice ; 
 scalar_t__ sdlPlaybackDevice ; 
 int /*<<< orphan*/  snd_inited ; 

void FUNC4(void)
{
	if (sdlPlaybackDevice != 0)
	{
		FUNC0("Closing SDL audio playback device...\n");
		FUNC1(sdlPlaybackDevice);
		FUNC0("SDL audio playback device closed.\n");
		sdlPlaybackDevice = 0;
	}

#ifdef USE_SDL_AUDIO_CAPTURE
	if (sdlCaptureDevice)
	{
		Com_Printf("Closing SDL audio capture device...\n");
		SDL_CloseAudioDevice(sdlCaptureDevice);
		Com_Printf("SDL audio capture device closed.\n");
		sdlCaptureDevice = 0;
	}
#endif

	FUNC2(SDL_INIT_AUDIO);
	FUNC3(dma.buffer);
	dma.buffer = NULL;
	dmapos = dmasize = 0;
	snd_inited = qfalse;
	FUNC0("SDL audio shut down.\n");
}