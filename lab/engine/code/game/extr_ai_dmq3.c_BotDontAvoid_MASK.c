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
struct TYPE_5__ {int /*<<< orphan*/  gs; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_6__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_2__ bot_goal_t ;

/* Variables and functions */
 int FUNC0 (int,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(bot_state_t *bs, char *itemname) {
	bot_goal_t goal;
	int num;

	num = FUNC0(-1, itemname, &goal);
	while(num >= 0) {
		FUNC1(bs->gs, goal.number);
		num = FUNC0(num, itemname, &goal);
	}
}