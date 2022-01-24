#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptc ;
struct TYPE_3__ {int wPeriodMin; } ;
typedef  TYPE_1__ TIMECAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int timerResolution ; 

void FUNC4( void )
{
#ifndef DEDICATED
	TIMECAPS ptc;
#endif

	FUNC1();

#ifndef DEDICATED
	if(FUNC3(&ptc, sizeof(ptc)) == MMSYSERR_NOERROR)
	{
		timerResolution = ptc.wPeriodMin;

		if(timerResolution > 1)
		{
			FUNC0("Warning: Minimum supported timer resolution is %ums "
				"on this system, recommended resolution 1ms\n", timerResolution);
		}
		
		FUNC2(timerResolution);				
	}
	else
		timerResolution = 0;
#endif
}