#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ bot_goal_t ;

/* Variables and functions */
 int GFL_DROPPED ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,char*,TYPE_1__*) ; 

int FUNC2(char *goalname, bot_goal_t *goal) {
	int i;

	if (!FUNC0(goalname)) return qfalse;
	i = -1;
	do {
		i = FUNC1(i, goalname, goal);
		if (i > 0) {
			//do NOT defend dropped items
			if (goal->flags & GFL_DROPPED)
				continue;
			return qtrue;
		}
	} while(i > 0);
	return qfalse;
}