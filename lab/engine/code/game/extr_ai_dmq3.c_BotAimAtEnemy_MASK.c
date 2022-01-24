#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
struct TYPE_23__ {int damagetype; } ;
struct TYPE_24__ {scalar_t__ number; int speed; int vspread; int hspread; TYPE_2__ proj; scalar_t__* offset; } ;
typedef  TYPE_3__ weaponinfo_t ;
typedef  int* vec3_t ;
struct TYPE_25__ {int fraction; scalar_t__ ent; int* endpos; scalar_t__ startsolid; } ;
typedef  TYPE_4__ bsp_trace_t ;
struct TYPE_22__ {scalar_t__ weaponstate; scalar_t__ viewheight; } ;
struct TYPE_26__ {scalar_t__ enemy; int* eye; int* ideal_viewangles; int* aimtarget; float enemysight_time; float teleport_time; int enemyposition_time; int* enemyvelocity; int* enemyorigin; scalar_t__ entitynum; int* viewangles; int* origin; int* lastenemyorigin; int /*<<< orphan*/  client; int /*<<< orphan*/  lastenemyareanum; int /*<<< orphan*/  areanum; TYPE_1__ cur_ps; int /*<<< orphan*/  character; int /*<<< orphan*/  weaponnum; int /*<<< orphan*/  ws; } ;
typedef  TYPE_5__ bot_state_t ;
struct TYPE_27__ {int* origin; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  areanum; int /*<<< orphan*/  entitynum; } ;
typedef  TYPE_6__ bot_goal_t ;
struct TYPE_28__ {int* origin; int* lastvisorigin; int update_time; scalar_t__ number; } ;
typedef  TYPE_7__ aas_entityinfo_t ;
struct TYPE_29__ {int* endpos; } ;
typedef  TYPE_8__ aas_clientmove_t ;
struct TYPE_21__ {scalar_t__ entitynum; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ entitynum; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int*,int*,int*,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_7__*) ; 
 int FUNC3 (scalar_t__,int*,int*,int,scalar_t__) ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_BFG10K ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_GRENADELAUNCHER ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_LIGHTNING ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_MACHINEGUN ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_PLASMAGUN ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_RAILGUN ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_ROCKETLAUNCHER ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY_SHOTGUN ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_SKILL ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_SKILL_BFG10K ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_SKILL_GRENADELAUNCHER ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_SKILL_PLASMAGUN ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_SKILL_ROCKETLAUNCHER ; 
 int /*<<< orphan*/  CHARACTERISTIC_REACTIONTIME ; 
 int DAMAGETYPE_RADIAL ; 
 scalar_t__ FUNC4 (int*,int*) ; 
 scalar_t__ FUNC5 (TYPE_7__*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  MASK_SHOT ; 
 scalar_t__ MAX_CLIENTS ; 
 size_t PITCH ; 
 int /*<<< orphan*/  PRESENCE_CROUCH ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  TFL_DEFAULT ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 float FUNC10 (int*) ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int*,float,int*,int*) ; 
 float FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int*) ; 
 scalar_t__ WEAPON_READY ; 
 scalar_t__ WP_BFG ; 
 scalar_t__ WP_GRENADE_LAUNCHER ; 
 scalar_t__ WP_LIGHTNING ; 
 scalar_t__ WP_MACHINEGUN ; 
 scalar_t__ WP_PLASMAGUN ; 
 scalar_t__ WP_RAILGUN ; 
 scalar_t__ WP_ROCKET_LAUNCHER ; 
 scalar_t__ WP_SHOTGUN ; 
 size_t YAW ; 
 TYPE_14__ blueobelisk ; 
 TYPE_13__ bot_challenge ; 
 int FUNC17 () ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  qfalse ; 
 double FUNC19 () ; 
 TYPE_12__ redobelisk ; 
 int /*<<< orphan*/  FUNC20 (TYPE_8__*,scalar_t__,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC22 (int*,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,int*) ; 
 double FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC25 (int*,int*) ; 

void FUNC26(bot_state_t *bs) {
	int i, enemyvisible;
	float dist, f, aim_skill, aim_accuracy, speed, reactiontime;
	vec3_t dir, bestorigin, end, start, groundtarget, cmdmove, enemyvelocity;
	vec3_t mins = {-4,-4,-4}, maxs = {4, 4, 4};
	weaponinfo_t wi;
	aas_entityinfo_t entinfo;
	bot_goal_t goal;
	bsp_trace_t trace;
	vec3_t target;

	//if the bot has no enemy
	if (bs->enemy < 0) {
		return;
	}
	//get the enemy entity information
	FUNC2(bs->enemy, &entinfo);
	//if this is not a player (should be an obelisk)
	if (bs->enemy >= MAX_CLIENTS) {
		//if the obelisk is visible
		FUNC9(entinfo.origin, target);
#ifdef MISSIONPACK
		// if attacking an obelisk
		if ( bs->enemy == redobelisk.entitynum ||
			bs->enemy == blueobelisk.entitynum ) {
			target[2] += 32;
		}
#endif
		//aim at the obelisk
		FUNC16(target, bs->eye, dir);
		FUNC25(dir, bs->ideal_viewangles);
		//set the aim target before trying to attack
		FUNC9(target, bs->aimtarget);
		return;
	}
	//
	//BotAI_Print(PRT_MESSAGE, "client %d: aiming at client %d\n", bs->entitynum, bs->enemy);
	//
	aim_skill = FUNC23(bs->character, CHARACTERISTIC_AIM_SKILL, 0, 1);
	aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY, 0, 1);
	//
	if (aim_skill > 0.95) {
		//don't aim too early
		reactiontime = 0.5 * FUNC23(bs->character, CHARACTERISTIC_REACTIONTIME, 0, 1);
		if (bs->enemysight_time > FUNC6() - reactiontime) return;
		if (bs->teleport_time > FUNC6() - reactiontime) return;
	}

	//get the weapon information
	FUNC21(bs->ws, bs->weaponnum, &wi);
	//get the weapon specific aim accuracy and or aim skill
	if (wi.number == WP_MACHINEGUN) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_MACHINEGUN, 0, 1);
	}
	else if (wi.number == WP_SHOTGUN) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_SHOTGUN, 0, 1);
	}
	else if (wi.number == WP_GRENADE_LAUNCHER) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_GRENADELAUNCHER, 0, 1);
		aim_skill = FUNC23(bs->character, CHARACTERISTIC_AIM_SKILL_GRENADELAUNCHER, 0, 1);
	}
	else if (wi.number == WP_ROCKET_LAUNCHER) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_ROCKETLAUNCHER, 0, 1);
		aim_skill = FUNC23(bs->character, CHARACTERISTIC_AIM_SKILL_ROCKETLAUNCHER, 0, 1);
	}
	else if (wi.number == WP_LIGHTNING) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_LIGHTNING, 0, 1);
	}
	else if (wi.number == WP_RAILGUN) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_RAILGUN, 0, 1);
	}
	else if (wi.number == WP_PLASMAGUN) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_PLASMAGUN, 0, 1);
		aim_skill = FUNC23(bs->character, CHARACTERISTIC_AIM_SKILL_PLASMAGUN, 0, 1);
	}
	else if (wi.number == WP_BFG) {
		aim_accuracy = FUNC23(bs->character, CHARACTERISTIC_AIM_ACCURACY_BFG10K, 0, 1);
		aim_skill = FUNC23(bs->character, CHARACTERISTIC_AIM_SKILL_BFG10K, 0, 1);
	}
	//
	if (aim_accuracy <= 0) aim_accuracy = 0.0001f;
	//get the enemy entity information
	FUNC2(bs->enemy, &entinfo);
	//if the enemy is invisible then shoot crappy most of the time
	if (FUNC5(&entinfo)) {
		if (FUNC19() > 0.1) aim_accuracy *= 0.4f;
	}
	//
	FUNC16(entinfo.origin, entinfo.lastvisorigin, enemyvelocity);
	FUNC14(enemyvelocity, 1 / entinfo.update_time, enemyvelocity);
	//enemy origin and velocity is remembered every 0.5 seconds
	if (bs->enemyposition_time < FUNC6()) {
		//
		bs->enemyposition_time = FUNC6() + 0.5;
		FUNC9(enemyvelocity, bs->enemyvelocity);
		FUNC9(entinfo.origin, bs->enemyorigin);
	}
	//if not extremely skilled
	if (aim_skill < 0.9) {
		FUNC16(entinfo.origin, bs->enemyorigin, dir);
		//if the enemy moved a bit
		if (FUNC11(dir) > FUNC7(48)) {
			//if the enemy changed direction
			if (FUNC4(bs->enemyvelocity, enemyvelocity) < 0) {
				//aim accuracy should be worse now
				aim_accuracy *= 0.7f;
			}
		}
	}
	//check visibility of enemy
	enemyvisible = FUNC3(bs->entitynum, bs->eye, bs->viewangles, 360, bs->enemy);
	//if the enemy is visible
	if (enemyvisible) {
		//
		FUNC9(entinfo.origin, bestorigin);
		bestorigin[2] += 8;
		//get the start point shooting from
		//NOTE: the x and y projectile start offsets are ignored
		FUNC9(bs->origin, start);
		start[2] += bs->cur_ps.viewheight;
		start[2] += wi.offset[2];
		//
		FUNC1(&trace, start, mins, maxs, bestorigin, bs->entitynum, MASK_SHOT);
		//if the enemy is NOT hit
		if (trace.fraction <= 1 && trace.ent != entinfo.number) {
			bestorigin[2] += 16;
		}
		//if it is not an instant hit weapon the bot might want to predict the enemy
		if (wi.speed) {
			//
			FUNC16(bestorigin, bs->origin, dir);
			dist = FUNC10(dir);
			FUNC16(entinfo.origin, bs->enemyorigin, dir);
			//if the enemy is NOT pretty far away and strafing just small steps left and right
			if (!(dist > 100 && FUNC11(dir) < FUNC7(32))) {
				//if skilled enough do exact prediction
				if (aim_skill > 0.8 &&
						//if the weapon is ready to fire
						bs->cur_ps.weaponstate == WEAPON_READY) {
					aas_clientmove_t move;
					vec3_t origin;

					FUNC16(entinfo.origin, bs->origin, dir);
					//distance towards the enemy
					dist = FUNC10(dir);
					//direction the enemy is moving in
					FUNC16(entinfo.origin, entinfo.lastvisorigin, dir);
					//
					FUNC14(dir, 1 / entinfo.update_time, dir);
					//
					FUNC9(entinfo.origin, origin);
					origin[2] += 1;
					//
					FUNC8(cmdmove);
					//AAS_ClearShownDebugLines();
					FUNC20(&move, bs->enemy, origin,
														PRESENCE_CROUCH, qfalse,
														dir, cmdmove, 0,
														dist * 10 / wi.speed, 0.1f, 0, 0, qfalse);
					FUNC9(move.endpos, bestorigin);
					//BotAI_Print(PRT_MESSAGE, "%1.1f predicted speed = %f, frames = %f\n", FloatTime(), VectorLength(dir), dist * 10 / wi.speed);
				}
				//if not that skilled do linear prediction
				else if (aim_skill > 0.4) {
					FUNC16(entinfo.origin, bs->origin, dir);
					//distance towards the enemy
					dist = FUNC10(dir);
					//direction the enemy is moving in
					FUNC16(entinfo.origin, entinfo.lastvisorigin, dir);
					dir[2] = 0;
					//
					speed = FUNC13(dir) / entinfo.update_time;
					//botimport.Print(PRT_MESSAGE, "speed = %f, wi->speed = %f\n", speed, wi->speed);
					//best spot to aim at
					FUNC12(entinfo.origin, (dist / wi.speed) * speed, dir, bestorigin);
				}
			}
		}
		//if the projectile does radial damage
		if (aim_skill > 0.6 && wi.proj.damagetype & DAMAGETYPE_RADIAL) {
			//if the enemy isn't standing significantly higher than the bot
			if (entinfo.origin[2] < bs->origin[2] + 16) {
				//try to aim at the ground in front of the enemy
				FUNC9(entinfo.origin, end);
				end[2] -= 64;
				FUNC1(&trace, entinfo.origin, NULL, NULL, end, entinfo.number, MASK_SHOT);
				//
				FUNC9(bestorigin, groundtarget);
				if (trace.startsolid) groundtarget[2] = entinfo.origin[2] - 16;
				else groundtarget[2] = trace.endpos[2] - 8;
				//trace a line from projectile start to ground target
				FUNC1(&trace, start, NULL, NULL, groundtarget, bs->entitynum, MASK_SHOT);
				//if hitpoint is not vertically too far from the ground target
				if (FUNC18(trace.endpos[2] - groundtarget[2]) < 50) {
					FUNC16(trace.endpos, groundtarget, dir);
					//if the hitpoint is near enough the ground target
					if (FUNC11(dir) < FUNC7(60)) {
						FUNC16(trace.endpos, start, dir);
						//if the hitpoint is far enough from the bot
						if (FUNC11(dir) > FUNC7(100)) {
							//check if the bot is visible from the ground target
							trace.endpos[2] += 1;
							FUNC1(&trace, trace.endpos, NULL, NULL, entinfo.origin, entinfo.number, MASK_SHOT);
							if (trace.fraction >= 1) {
								//botimport.Print(PRT_MESSAGE, "%1.1f aiming at ground\n", AAS_Time());
								FUNC9(groundtarget, bestorigin);
							}
						}
					}
				}
			}
		}
		bestorigin[0] += 20 * FUNC17() * (1 - aim_accuracy);
		bestorigin[1] += 20 * FUNC17() * (1 - aim_accuracy);
		bestorigin[2] += 10 * FUNC17() * (1 - aim_accuracy);
	}
	else {
		//
		FUNC9(bs->lastenemyorigin, bestorigin);
		bestorigin[2] += 8;
		//if the bot is skilled enough
		if (aim_skill > 0.5) {
			//do prediction shots around corners
			if (wi.number == WP_BFG ||
				wi.number == WP_ROCKET_LAUNCHER ||
				wi.number == WP_GRENADE_LAUNCHER) {
				//create the chase goal
				goal.entitynum = bs->client;
				goal.areanum = bs->areanum;
				FUNC9(bs->eye, goal.origin);
				FUNC15(goal.mins, -8, -8, -8);
				FUNC15(goal.maxs, 8, 8, 8);
				//
				if (FUNC22(bs->lastenemyorigin, bs->lastenemyareanum, &goal, TFL_DEFAULT, target)) {
					FUNC16(target, bs->eye, dir);
					if (FUNC11(dir) > FUNC7(80)) {
						FUNC9(target, bestorigin);
						bestorigin[2] -= 20;
					}
				}
				aim_accuracy = 1;
			}
		}
	}
	//
	if (enemyvisible) {
		FUNC1(&trace, bs->eye, NULL, NULL, bestorigin, bs->entitynum, MASK_SHOT);
		FUNC9(trace.endpos, bs->aimtarget);
	}
	else {
		FUNC9(bestorigin, bs->aimtarget);
	}
	//get aim direction
	FUNC16(bestorigin, bs->eye, dir);
	//
	if (wi.number == WP_MACHINEGUN ||
		wi.number == WP_SHOTGUN ||
		wi.number == WP_LIGHTNING ||
		wi.number == WP_RAILGUN) {
		//distance towards the enemy
		dist = FUNC10(dir);
		if (dist > 150) dist = 150;
		f = 0.6 + dist / 150 * 0.4;
		aim_accuracy *= f;
	}
	//add some random stuff to the aim direction depending on the aim accuracy
	if (aim_accuracy < 0.8) {
		FUNC13(dir);
		for (i = 0; i < 3; i++) dir[i] += 0.3 * FUNC17() * (1 - aim_accuracy);
	}
	//set the ideal view angles
	FUNC25(dir, bs->ideal_viewangles);
	//take the weapon spread into account for lower skilled bots
	bs->ideal_viewangles[PITCH] += 6 * wi.vspread * FUNC17() * (1 - aim_accuracy);
	bs->ideal_viewangles[PITCH] = FUNC0(bs->ideal_viewangles[PITCH]);
	bs->ideal_viewangles[YAW] += 6 * wi.hspread * FUNC17() * (1 - aim_accuracy);
	bs->ideal_viewangles[YAW] = FUNC0(bs->ideal_viewangles[YAW]);
	//if the bots should be really challenging
	if (bot_challenge.integer) {
		//if the bot is really accurate and has the enemy in view for some time
		if (aim_accuracy > 0.9 && bs->enemysight_time < FUNC6() - 1) {
			//set the view angles directly
			if (bs->ideal_viewangles[PITCH] > 180) bs->ideal_viewangles[PITCH] -= 360;
			FUNC9(bs->ideal_viewangles, bs->viewangles);
			FUNC24(bs->client, bs->viewangles);
		}
	}
}