#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ lastgoal_ltgtype; scalar_t__ redflagstatus; scalar_t__ blueflagstatus; int ordered; scalar_t__ ltgtype; int /*<<< orphan*/  origin; int /*<<< orphan*/  areanum; scalar_t__ teamgoal_time; int /*<<< orphan*/  lastgoal_teammate; int /*<<< orphan*/  teammate; int /*<<< orphan*/  lastgoal_teamgoal; int /*<<< orphan*/  teamgoal; int /*<<< orphan*/  lastgoal_decisionmaker; int /*<<< orphan*/  decisionmaker; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_13__ {int /*<<< orphan*/  areanum; } ;
typedef  TYPE_2__ bot_goal_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ LTG_GETFLAG ; 
 scalar_t__ LTG_RETURNFLAG ; 
 scalar_t__ TEAM_RED ; 
 int /*<<< orphan*/  TFL_DEFAULT ; 
 scalar_t__ gametype ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int qfalse ; 
 int qtrue ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(bot_state_t *bs) {

	if (gametype == GT_CTF) {
		// don't go back to returning the flag if it's at the base
		if ( bs->lastgoal_ltgtype == LTG_RETURNFLAG ) {
			if ( FUNC4(bs) == TEAM_RED ) {
				if ( bs->redflagstatus == 0 ) {
					bs->lastgoal_ltgtype = 0;
				}
			}
			else {
				if ( bs->blueflagstatus == 0 ) {
					bs->lastgoal_ltgtype = 0;
				}
			}
		}
	}

	if ( bs->lastgoal_ltgtype ) {
		bs->decisionmaker = bs->lastgoal_decisionmaker;
		bs->ordered = qtrue;
		bs->ltgtype = bs->lastgoal_ltgtype;
		FUNC7(&bs->teamgoal, &bs->lastgoal_teamgoal, sizeof(bot_goal_t));
		bs->teammate = bs->lastgoal_teammate;
		bs->teamgoal_time = FUNC6() + 300;
		FUNC3(bs);
		//
		if ( gametype == GT_CTF ) {
			if ( bs->ltgtype == LTG_GETFLAG ) {
				bot_goal_t *tb, *eb;
				int tt, et;

				tb = FUNC5(bs);
				eb = FUNC0(bs);
				tt = FUNC8(bs->areanum, bs->origin, tb->areanum, TFL_DEFAULT);
				et = FUNC8(bs->areanum, bs->origin, eb->areanum, TFL_DEFAULT);
				// if the travel time towards the enemy base is larger than towards our base
				if (et > tt) {
					//get an alternative route goal towards the enemy base
					FUNC1(bs, FUNC2(bs));
				}
			}
		}
		return qtrue;
	}
	return qfalse;
}