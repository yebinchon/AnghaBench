#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_21__ {int fraction; scalar_t__ ent; } ;
typedef  TYPE_1__ bsp_trace_t ;
struct TYPE_22__ {scalar_t__ lasthealth; scalar_t__* inventory; int client; scalar_t__ enemy; int enemysight_time; int enemysuicide; int enemyvisible_time; scalar_t__ entitynum; scalar_t__ enemydeath_time; int /*<<< orphan*/  origin; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  eye; int /*<<< orphan*/  character; } ;
typedef  TYPE_2__ bot_state_t ;
struct TYPE_23__ {scalar_t__ entitynum; int /*<<< orphan*/  origin; } ;
typedef  TYPE_3__ bot_goal_t ;
struct TYPE_24__ {scalar_t__ number; int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; int /*<<< orphan*/  valid; } ;
typedef  TYPE_4__ aas_entityinfo_t ;
struct TYPE_26__ {int flags; } ;
struct TYPE_25__ {int maxclients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_4__*) ; 
 float FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  CHARACTERISTIC_ALERTNESS ; 
 int /*<<< orphan*/  CHARACTERISTIC_EASY_FRAGGER ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int FL_NOTARGET ; 
 int FUNC12 () ; 
 scalar_t__ GT_OBELISK ; 
 size_t INVENTORY_HEALTH ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int*) ; 
 float FUNC14 (int) ; 
 scalar_t__ TEAM_RED ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int*) ; 
 float FUNC16 (int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__ blueobelisk ; 
 TYPE_7__* g_entities ; 
 scalar_t__ gametype ; 
 int /*<<< orphan*/  lastteleport_origin ; 
 int lastteleport_time ; 
 TYPE_6__ level ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_3__ redobelisk ; 
 float FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int*,int*) ; 

int FUNC20(bot_state_t *bs, int curenemy) {
	int i, healthdecrease;
	float f, alertness, easyfragger, vis;
	float squaredist, cursquaredist;
	aas_entityinfo_t entinfo, curenemyinfo;
	vec3_t dir, angles;

	alertness = FUNC18(bs->character, CHARACTERISTIC_ALERTNESS, 0, 1);
	easyfragger = FUNC18(bs->character, CHARACTERISTIC_EASY_FRAGGER, 0, 1);
	//check if the health decreased
	healthdecrease = bs->lasthealth > bs->inventory[INVENTORY_HEALTH];
	//remember the current health value
	bs->lasthealth = bs->inventory[INVENTORY_HEALTH];
	//
	if (curenemy >= 0) {
		FUNC1(curenemy, &curenemyinfo);
		if (FUNC7(&curenemyinfo)) return qfalse;
		FUNC17(curenemyinfo.origin, bs->origin, dir);
		cursquaredist = FUNC16(dir);
	}
	else {
		cursquaredist = 0;
	}
#ifdef MISSIONPACK
	if (gametype == GT_OBELISK) {
		vec3_t target;
		bot_goal_t *goal;
		bsp_trace_t trace;

		if (BotTeam(bs) == TEAM_RED)
			goal = &blueobelisk;
		else
			goal = &redobelisk;
		//if the obelisk is visible
		VectorCopy(goal->origin, target);
		target[2] += 1;
		BotAI_Trace(&trace, bs->eye, NULL, NULL, target, bs->client, CONTENTS_SOLID);
		if (trace.fraction >= 1 || trace.ent == goal->entitynum) {
			if (goal->entitynum == bs->enemy) {
				return qfalse;
			}
			bs->enemy = goal->entitynum;
			bs->enemysight_time = FloatTime();
			bs->enemysuicide = qfalse;
			bs->enemydeath_time = 0;
			bs->enemyvisible_time = FloatTime();
			return qtrue;
		}
	}
#endif
	//
	for (i = 0; i < level.maxclients; i++) {

		if (i == bs->client) continue;
		//if it's the current enemy
		if (i == curenemy) continue;
		//if the enemy has targeting disabled
		if (g_entities[i].flags & FL_NOTARGET) {
			continue;
		}
		//
		FUNC1(i, &entinfo);
		//
		if (!entinfo.valid) continue;
		//if the enemy isn't dead and the enemy isn't the bot self
		if (FUNC9(&entinfo) || entinfo.number == bs->entitynum) continue;
		//if the enemy is invisible and not shooting
		if (FUNC10(&entinfo) && !FUNC11(&entinfo)) {
			continue;
		}
		//if not an easy fragger don't shoot at chatting players
		if (easyfragger < 0.5 && FUNC8(&entinfo)) continue;
		//
		if (lastteleport_time > FUNC12() - 3) {
			FUNC17(entinfo.origin, lastteleport_origin, dir);
			if (FUNC16(dir) < FUNC14(70)) continue;
		}
		//calculate the distance towards the enemy
		FUNC17(entinfo.origin, bs->origin, dir);
		squaredist = FUNC16(dir);
		//if this entity is not carrying a flag
		if (!FUNC7(&entinfo))
		{
			//if this enemy is further away than the current one
			if (curenemy >= 0 && squaredist > cursquaredist) continue;
		} //end if
		//if the bot has no
		if (squaredist > FUNC14(900.0 + alertness * 4000.0)) continue;
		//if on the same team
		if (FUNC3(bs, i)) continue;
		//if the bot's health decreased or the enemy is shooting
		if (curenemy < 0 && (healthdecrease || FUNC11(&entinfo)))
			f = 360;
		else
			f = 90 + 90 - (90 - (squaredist > FUNC14(810) ? FUNC14(810) : squaredist) / (810 * 9));
		//check if the enemy is visible
		vis = FUNC2(bs->entitynum, bs->eye, bs->viewangles, f, i);
		if (vis <= 0) continue;
		//if the enemy is quite far away, not shooting and the bot is not damaged
		if (curenemy < 0 && squaredist > FUNC14(100) && !healthdecrease && !FUNC11(&entinfo))
		{
			//check if we can avoid this enemy
			FUNC17(bs->origin, entinfo.origin, dir);
			FUNC19(dir, angles);
			//if the bot isn't in the fov of the enemy
			if (!FUNC13(entinfo.angles, 90, angles)) {
				//update some stuff for this enemy
				FUNC5(bs, i);
				//if the bot doesn't really want to fight
				if (FUNC6(bs)) continue;
			}
		}
		//found an enemy
		bs->enemy = entinfo.number;
		if (curenemy >= 0) bs->enemysight_time = FUNC12() - 2;
		else bs->enemysight_time = FUNC12();
		bs->enemysuicide = qfalse;
		bs->enemydeath_time = 0;
		bs->enemyvisible_time = FUNC12();
		return qtrue;
	}
	return qfalse;
}