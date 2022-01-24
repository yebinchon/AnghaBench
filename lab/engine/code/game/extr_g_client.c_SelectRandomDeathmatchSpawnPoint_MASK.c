#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ gentity_t ;

/* Variables and functions */
 int FL_NO_BOTS ; 
 int FL_NO_HUMANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int MAX_SPAWN_POINTS ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  classname ; 
 int FUNC3 () ; 

gentity_t *FUNC4(qboolean isbot) {
	gentity_t	*spot;
	int			count;
	int			selection;
	gentity_t	*spots[MAX_SPAWN_POINTS];

	count = 0;
	spot = NULL;

	while((spot = FUNC1 (spot, FUNC0(classname), "info_player_deathmatch")) != NULL && count < MAX_SPAWN_POINTS)
	{
		if(FUNC2(spot))
			continue;

		if(((spot->flags & FL_NO_BOTS) && isbot) ||
		   ((spot->flags & FL_NO_HUMANS) && !isbot))
		{
			// spot is not for this human/bot player
			continue;
		}

		spots[count] = spot;
		count++;
	}

	if ( !count ) {	// no spots that won't telefrag
		return FUNC1( NULL, FUNC0(classname), "info_player_deathmatch");
	}

	selection = FUNC3() % count;
	return spots[ selection ];
}