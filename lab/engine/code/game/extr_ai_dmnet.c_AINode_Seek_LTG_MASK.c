#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_37__ {int tfl; int enemy; int killedenemy_time; int thinktime; int check_time; scalar_t__ ltgtype; int nbg_time; double* ideal_viewangles; int flags; int /*<<< orphan*/  weaponnum; int /*<<< orphan*/  origin; int /*<<< orphan*/  ms; scalar_t__ ltg_time; int /*<<< orphan*/  gs; int /*<<< orphan*/  client; scalar_t__ stand_time; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_38__ {int flags; int /*<<< orphan*/  weapon; int /*<<< orphan*/  movedir; int /*<<< orphan*/  ideal_viewangles; scalar_t__ failure; } ;
typedef  TYPE_2__ bot_moveresult_t ;
typedef  int /*<<< orphan*/  bot_goal_t ;
struct TYPE_39__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int BFL_IDEALVIEWSET ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 scalar_t__ FUNC28 (TYPE_1__*) ; 
 int FUNC29 () ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ LTG_DEFENDKEYAREA ; 
 int MOVERESULT_MOVEMENTVIEW ; 
 int MOVERESULT_MOVEMENTVIEWSET ; 
 int MOVERESULT_MOVEMENTWEAPON ; 
 int MOVERESULT_SWIMVIEW ; 
 int MOVERESULT_WAITING ; 
 int TFL_DEFAULT ; 
 int TFL_GRAPPLEHOOK ; 
 int TFL_LAVA ; 
 int TFL_ROCKETJUMP ; 
 int TFL_SLIME ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,double*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ bot_grapple ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 double FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,double*) ; 

int FUNC41(bot_state_t *bs)
{
	bot_goal_t goal;
	vec3_t target, dir;
	bot_moveresult_t moveresult;
	int range;
	//char buf[128];
	//bot_goal_t tmpgoal;

	if (FUNC20(bs)) {
		FUNC3(bs, "seek ltg: observer");
		return qfalse;
	}
	//if in the intermission
	if (FUNC18(bs)) {
		FUNC2(bs, "seek ltg: intermission");
		return qfalse;
	}
	//respawn if dead
	if (FUNC19(bs)) {
		FUNC4(bs, "seek ltg: bot dead");
		return qfalse;
	}
	//
	if (FUNC13(bs)) {
		bs->stand_time = FUNC29() + FUNC12(bs);
		FUNC6(bs, "seek ltg: random chat");
		return qfalse;
	}
	//
	bs->tfl = TFL_DEFAULT;
	if (bot_grapple.integer) bs->tfl |= TFL_GRAPPLEHOOK;
	//if in lava or slime the bot should be able to get out
	if (FUNC17(bs)) bs->tfl |= TFL_LAVA|TFL_SLIME;
	//
	if (FUNC11(bs)) {
		bs->tfl |= TFL_ROCKETJUMP;
	}
	//map specific code
	FUNC22(bs);
	//no enemy
	bs->enemy = -1;
	//
	if (bs->killedenemy_time > FUNC29() - 2) {
		if (FUNC33() < bs->thinktime * 1) {
			FUNC39(bs->client);
		}
	}
	//if there is an enemy
	if (FUNC15(bs, -1)) {
		if (FUNC28(bs)) {
			//keep the current long term goal and retreat
			FUNC1(bs, "seek ltg: found enemy");
			return qfalse;
		}
		else {
			FUNC38(bs->ms);
			//empty the goal stack
			FUNC34(bs->gs);
			//go fight
			FUNC0(bs, "seek ltg: found enemy");
			return qfalse;
		}
	}
	//
	FUNC26(bs, qfalse);
	//get the current long term goal
	if (!FUNC21(bs, bs->tfl, qfalse, &goal)) {
		return qtrue;
	}
	//check for nearby goals periodicly
	if (bs->check_time < FUNC29()) {
		bs->check_time = FUNC29() + 0.5;
		//check if the bot wants to camp
		FUNC27(bs);
		//
		if (bs->ltgtype == LTG_DEFENDKEYAREA) range = 400;
		else range = 150;
		//
#ifdef CTF
		if (gametype == GT_CTF) {
			//if carrying a flag the bot shouldn't be distracted too much
			if (BotCTFCarryingFlag(bs))
				range = 50;
		}
#endif //CTF
#ifdef MISSIONPACK
		else if (gametype == GT_1FCTF) {
			if (Bot1FCTFCarryingFlag(bs))
				range = 50;
		}
		else if (gametype == GT_HARVESTER) {
			if (BotHarvesterCarryingCubes(bs))
				range = 80;
		}
#endif
		//
		if (FUNC23(bs, bs->tfl, &goal, range)) {
			FUNC38(bs->ms);
			//get the goal at the top of the stack
			//trap_BotGetTopGoal(bs->gs, &tmpgoal);
			//trap_BotGoalName(tmpgoal.number, buf, 144);
			//BotAI_Print(PRT_MESSAGE, "new nearby goal %s\n", buf);
			//time the bot gets to pick up the nearby goal item
			bs->nbg_time = FUNC29() + 4 + range * 0.01;
			FUNC5(bs, "ltg seek: nbg");
			return qfalse;
		}
	}
	//predict obstacles
	if (FUNC9(bs, &goal))
		return qfalse;
	//initialize the movement state
	FUNC25(bs);
	//move towards the goal
	FUNC35(&moveresult, bs->ms, &goal, bs->tfl);
	//if the movement failed
	if (moveresult.failure) {
		//reset the avoid reach, otherwise bot is stuck in current area
		FUNC37(bs->ms);
		//BotAI_Print(PRT_MESSAGE, "movement failure %d\n", moveresult.traveltype);
		bs->ltg_time = 0;
	}
	//
	FUNC8(bs, &moveresult, qtrue);
	//
	FUNC14(bs, &moveresult);
	//if the viewangles are used for the movement
	if (moveresult.flags & (MOVERESULT_MOVEMENTVIEWSET|MOVERESULT_MOVEMENTVIEW|MOVERESULT_SWIMVIEW)) {
		FUNC30(moveresult.ideal_viewangles, bs->ideal_viewangles);
	}
	//if waiting for something
	else if (moveresult.flags & MOVERESULT_WAITING) {
		if (FUNC33() < bs->thinktime * 0.8) {
			FUNC24(bs, target);
			FUNC32(target, bs->origin, dir);
			FUNC40(dir, bs->ideal_viewangles);
			bs->ideal_viewangles[2] *= 0.5;
		}
	}
	else if (!(bs->flags & BFL_IDEALVIEWSET)) {
		if (FUNC36(bs->ms, &goal, bs->tfl, 300, target)) {
			FUNC32(target, bs->origin, dir);
			FUNC40(dir, bs->ideal_viewangles);
		}
		//FIXME: look at cluster portals?
		else if (FUNC31(moveresult.movedir)) {
			FUNC40(moveresult.movedir, bs->ideal_viewangles);
		}
		else if (FUNC33() < bs->thinktime * 0.8) {
			FUNC24(bs, target);
			FUNC32(target, bs->origin, dir);
			FUNC40(dir, bs->ideal_viewangles);
			bs->ideal_viewangles[2] *= 0.5;
		}
		bs->ideal_viewangles[2] *= 0.5;
	}
	//if the weapon is used for the bot movement
	if (moveresult.flags & MOVERESULT_MOVEMENTWEAPON) bs->weaponnum = moveresult.weapon;
	//
	return qtrue;
}