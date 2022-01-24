#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ainode; int /*<<< orphan*/  gs; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_2__ bot_goal_t ;

/* Variables and functions */
 int /*<<< orphan*/  AINode_Seek_NBG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC3(bot_state_t *bs, char *s) {
	bot_goal_t goal;
	char buf[144];

	if (FUNC1(bs->gs, &goal)) {
		FUNC2(goal.number, buf, 144);
		FUNC0(bs, "seek NBG", buf, s);
	}
	else {
		FUNC0(bs, "seek NBG", "no goal", s);
	}
	bs->ainode = AINode_Seek_NBG;
}