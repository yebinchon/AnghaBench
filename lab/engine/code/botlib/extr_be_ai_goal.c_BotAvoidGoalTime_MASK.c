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
struct TYPE_3__ {int* avoidgoals; scalar_t__* avoidgoaltimes; } ;
typedef  TYPE_1__ bot_goalstate_t ;

/* Variables and functions */
 float FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int MAX_AVOIDGOALS ; 

float FUNC2(int goalstate, int number)
{
	int i;
	bot_goalstate_t *gs;

	gs = FUNC1(goalstate);
	if (!gs) return 0;
	//don't use the goals the bot wants to avoid
	for (i = 0; i < MAX_AVOIDGOALS; i++)
	{
		if (gs->avoidgoals[i] == number && gs->avoidgoaltimes[i] >= FUNC0())
		{
			return gs->avoidgoaltimes[i] - FUNC0();
		} //end if
	} //end for
	return 0;
}