#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  goal; } ;
typedef  TYPE_1__ bot_waypoint_t ;
struct TYPE_6__ {int /*<<< orphan*/  checkpoints; } ;
typedef  TYPE_2__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC3(bot_state_t *bs, char *goalname, bot_goal_t *goal) {
	bot_waypoint_t *cp;

	if (FUNC1(goalname, goal)) return qtrue;

	cp = FUNC0(bs->checkpoints, goalname);
	if (cp) {
		FUNC2(goal, &cp->goal, sizeof(bot_goal_t));
		return qtrue;
	}
	return qfalse;
}