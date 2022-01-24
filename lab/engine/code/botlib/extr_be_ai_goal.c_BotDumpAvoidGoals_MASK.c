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
struct TYPE_3__ {scalar_t__* avoidgoaltimes; int /*<<< orphan*/ * avoidgoals; } ;
typedef  TYPE_1__ bot_goalstate_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int MAX_AVOIDGOALS ; 

void FUNC4(int goalstate)
{
	int i;
	bot_goalstate_t *gs;
	char name[32];

	gs = FUNC2(goalstate);
	if (!gs) return;
	for (i = 0; i < MAX_AVOIDGOALS; i++)
	{
		if (gs->avoidgoaltimes[i] >= FUNC0())
		{
			FUNC1(gs->avoidgoals[i], name, 32);
			FUNC3("avoid goal %s, number %d for %f seconds", name,
				gs->avoidgoals[i], gs->avoidgoaltimes[i] - FUNC0());
		} //end if
	} //end for
}