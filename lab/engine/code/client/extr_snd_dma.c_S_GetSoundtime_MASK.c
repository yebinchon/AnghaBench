#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {float aviSoundFrameRemainder; } ;
struct TYPE_6__ {int samples; int channels; float speed; int submission_chunk; } ;
struct TYPE_5__ {int value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 float FUNC2 (float,float) ; 
 float FUNC3 (int /*<<< orphan*/ ,float) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_4__* cl_aviFrameRate ; 
 TYPE_3__ clc ; 
 TYPE_2__ dma ; 
 TYPE_1__* s_mixPreStep ; 
 int s_paintedtime ; 
 int s_soundtime ; 

void FUNC6(void)
{
	int		samplepos;
	static	int		buffers;
	static	int		oldsamplepos;
	int		fullsamples;
	
	fullsamples = dma.samples / dma.channels;

	if( FUNC0( ) )
	{
		float fps = FUNC3(cl_aviFrameRate->value, 1000.0f);
		float frameDuration = FUNC2(dma.speed / fps, 1.0f) + clc.aviSoundFrameRemainder;

		int msec = (int)frameDuration;
		s_soundtime += msec;
		clc.aviSoundFrameRemainder = frameDuration - msec;

		return;
	}

	// it is possible to miscount buffers if it has wrapped twice between
	// calls to S_Update.  Oh well.
	samplepos = FUNC4();
	if (samplepos < oldsamplepos)
	{
		buffers++;					// buffer wrapped
		
		if (s_paintedtime > 0x40000000)
		{	// time to chop things off to avoid 32 bit limits
			buffers = 0;
			s_paintedtime = fullsamples;
			FUNC5 ();
		}
	}
	oldsamplepos = samplepos;

	s_soundtime = buffers*fullsamples + samplepos/dma.channels;

#if 0
// check to make sure that we haven't overshot
	if (s_paintedtime < s_soundtime)
	{
		Com_DPrintf ("S_Update_ : overflow\n");
		s_paintedtime = s_soundtime;
	}
#endif

	if ( dma.submission_chunk < 256 ) {
		s_paintedtime = s_soundtime + s_mixPreStep->value * dma.speed;
	} else {
		s_paintedtime = s_soundtime + dma.submission_chunk;
	}
}