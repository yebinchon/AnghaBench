#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  netname ;
struct TYPE_5__ {scalar_t__ ltg_time; int /*<<< orphan*/  gs; int /*<<< orphan*/  ms; int /*<<< orphan*/  client; int /*<<< orphan*/  inventory; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int qtrue ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(bot_state_t *bs, int tfl, bot_goal_t *goal) {
	//if the bot has no goal
	if (!FUNC6(bs->gs, goal)) {
		//BotAI_Print(PRT_MESSAGE, "no ltg on stack\n");
		bs->ltg_time = 0;
	}
	//if the bot touches the current goal
	else if (FUNC2(bs, goal)) {
		FUNC1(bs);
		bs->ltg_time = 0;
	}
	//if it is time to find a new long term goal
	if (bs->ltg_time < FUNC4()) {
		//pop the current goal from the stack
		FUNC7(bs->gs);
		//BotAI_Print(PRT_MESSAGE, "%s: choosing new ltg\n", ClientName(bs->client, netname, sizeof(netname)));
		//choose a new goal
		//BotAI_Print(PRT_MESSAGE, "%6.1f client %d: BotChooseLTGItem\n", FloatTime(), bs->client);
		if (FUNC5(bs->gs, bs->origin, bs->inventory, tfl)) {
			/*
			char buf[128];
			//get the goal at the top of the stack
			trap_BotGetTopGoal(bs->gs, goal);
			trap_BotGoalName(goal->number, buf, sizeof(buf));
			BotAI_Print(PRT_MESSAGE, "%1.1f: new long term goal %s\n", FloatTime(), buf);
            */
			bs->ltg_time = FUNC4() + 20;
		}
		else {//the bot gets sorta stuck with all the avoid timings, shouldn't happen though
			//
#ifdef DEBUG
			char netname[128];

			BotAI_Print(PRT_MESSAGE, "%s: no valid ltg (probably stuck)\n", ClientName(bs->client, netname, sizeof(netname)));
#endif
			//trap_BotDumpAvoidGoals(bs->gs);
			//reset the avoid goals and the avoid reach
			FUNC8(bs->gs);
			FUNC9(bs->ms);
		}
		//get the goal at the top of the stack
		return FUNC6(bs->gs, goal);
	}
	return qtrue;
}