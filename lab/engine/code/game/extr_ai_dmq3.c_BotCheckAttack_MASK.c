#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {int damagetype; int radius; double damage; } ;
struct TYPE_24__ {int* offset; int flags; TYPE_4__ proj; } ;
typedef  TYPE_5__ weaponinfo_t ;
typedef  int* vec3_t ;
struct TYPE_25__ {int fraction; int ent; } ;
typedef  TYPE_6__ bsp_trace_t ;
struct TYPE_22__ {scalar_t__ viewheight; } ;
struct TYPE_26__ {int enemy; float enemysight_time; float teleport_time; double weaponchange_time; int firethrottlewait_time; int firethrottleshoot_time; int* aimtarget; int* eye; scalar_t__ weaponnum; int flags; int /*<<< orphan*/  client; int /*<<< orphan*/  entitynum; int /*<<< orphan*/  viewangles; TYPE_3__ cur_ps; int /*<<< orphan*/  origin; int /*<<< orphan*/  ws; int /*<<< orphan*/  character; } ;
typedef  TYPE_7__ bot_state_t ;
struct TYPE_27__ {size_t number; } ;
typedef  TYPE_8__ aas_entityinfo_t ;
struct TYPE_20__ {int frame; } ;
struct TYPE_21__ {TYPE_1__ s; } ;
struct TYPE_19__ {size_t entitynum; } ;
struct TYPE_18__ {TYPE_2__* activator; } ;
struct TYPE_17__ {size_t entitynum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *) ; 
 int BFL_ATTACKED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int*,int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_8__*) ; 
 scalar_t__ FUNC3 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  CHARACTERISTIC_FIRETHROTTLE ; 
 int /*<<< orphan*/  CHARACTERISTIC_REACTIONTIME ; 
 int CONTENTS_PLAYERCLIP ; 
 int CONTENTS_SOLID ; 
 int DAMAGETYPE_RADIAL ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float,int*) ; 
 int MASK_SHOT ; 
 int MAX_CLIENTS ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int*) ; 
 int WFL_FIRERELEASED ; 
 scalar_t__ WP_GAUNTLET ; 
 TYPE_12__ blueobelisk ; 
 TYPE_11__* g_entities ; 
 float FUNC11 () ; 
 TYPE_10__ redobelisk ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,TYPE_5__*) ; 
 float FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*) ; 

void FUNC16(bot_state_t *bs) {
	float points, reactiontime, fov, firethrottle;
	int attackentity;
	bsp_trace_t bsptrace;
	//float selfpreservation;
	vec3_t forward, right, start, end, dir, angles;
	weaponinfo_t wi;
	bsp_trace_t trace;
	aas_entityinfo_t entinfo;
	vec3_t mins = {-8, -8, -8}, maxs = {8, 8, 8};

	attackentity = bs->enemy;
	//
	FUNC2(attackentity, &entinfo);
	// if not attacking a player
	if (attackentity >= MAX_CLIENTS) {
#ifdef MISSIONPACK
		// if attacking an obelisk
		if ( entinfo.number == redobelisk.entitynum ||
			entinfo.number == blueobelisk.entitynum ) {
			// if obelisk is respawning return
			if ( g_entities[entinfo.number].activator &&
				g_entities[entinfo.number].activator->s.frame == 2 ) {
				return;
			}
		}
#endif
	}
	//
	reactiontime = FUNC13(bs->character, CHARACTERISTIC_REACTIONTIME, 0, 1);
	if (bs->enemysight_time > FUNC4() - reactiontime) return;
	if (bs->teleport_time > FUNC4() - reactiontime) return;
	//if changing weapons
	if (bs->weaponchange_time > FUNC4() - 0.1) return;
	//check fire throttle characteristic
	if (bs->firethrottlewait_time > FUNC4()) return;
	firethrottle = FUNC13(bs->character, CHARACTERISTIC_FIRETHROTTLE, 0, 1);
	if (bs->firethrottleshoot_time < FUNC4()) {
		if (FUNC11() > firethrottle) {
			bs->firethrottlewait_time = FUNC4() + firethrottle;
			bs->firethrottleshoot_time = 0;
		}
		else {
			bs->firethrottleshoot_time = FUNC4() + 1 - firethrottle;
			bs->firethrottlewait_time = 0;
		}
	}
	//
	//
	FUNC10(bs->aimtarget, bs->eye, dir);
	//
	if (bs->weaponnum == WP_GAUNTLET) {
		if (FUNC8(dir) > FUNC6(60)) {
			return;
		}
	}
	if (FUNC8(dir) < FUNC6(100))
		fov = 120;
	else
		fov = 50;
	//
	FUNC15(dir, angles);
	if (!FUNC5(bs->viewangles, fov, angles))
		return;
	FUNC1(&bsptrace, bs->eye, NULL, NULL, bs->aimtarget, bs->client, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
	if (bsptrace.fraction < 1 && bsptrace.ent != attackentity)
		return;

	//get the weapon info
	FUNC12(bs->ws, bs->weaponnum, &wi);
	//get the start point shooting from
	FUNC7(bs->origin, start);
	start[2] += bs->cur_ps.viewheight;
	FUNC0(bs->viewangles, forward, right, NULL);
	start[0] += forward[0] * wi.offset[0] + right[0] * wi.offset[1];
	start[1] += forward[1] * wi.offset[0] + right[1] * wi.offset[1];
	start[2] += forward[2] * wi.offset[0] + right[2] * wi.offset[1] + wi.offset[2];
	//end point aiming at
	FUNC9(start, 1000, forward, end);
	//a little back to make sure not inside a very close enemy
	FUNC9(start, -12, forward, start);
	FUNC1(&trace, start, mins, maxs, end, bs->entitynum, MASK_SHOT);
	//if the entity is a client
	if (trace.ent >= 0 && trace.ent < MAX_CLIENTS) {
		if (trace.ent != attackentity) {
			//if a teammate is hit
			if (FUNC3(bs, trace.ent))
				return;
		}
	}
	//if won't hit the enemy or not attacking a player (obelisk)
	if (trace.ent != attackentity || attackentity >= MAX_CLIENTS) {
		//if the projectile does radial damage
		if (wi.proj.damagetype & DAMAGETYPE_RADIAL) {
			if (trace.fraction * 1000 < wi.proj.radius) {
				points = (wi.proj.damage - 0.5 * trace.fraction * 1000) * 0.5;
				if (points > 0) {
					return;
				}
			}
			//FIXME: check if a teammate gets radial damage
		}
	}
	//if fire has to be release to activate weapon
	if (wi.flags & WFL_FIRERELEASED) {
		if (bs->flags & BFL_ATTACKED) {
			FUNC14(bs->client);
		}
	}
	else {
		FUNC14(bs->client);
	}
	bs->flags ^= BFL_ATTACKED;
}