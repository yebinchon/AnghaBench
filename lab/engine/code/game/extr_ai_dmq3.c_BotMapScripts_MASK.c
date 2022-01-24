#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  mapname ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_8__ {scalar_t__* origin; int client; scalar_t__ entitynum; int enemy; int* ideal_viewangles; int /*<<< orphan*/  viewangles; int /*<<< orphan*/  character; int /*<<< orphan*/  eye; int /*<<< orphan*/  flags; int /*<<< orphan*/  tfl; } ;
typedef  TYPE_1__ bot_state_t ;
struct TYPE_9__ {scalar_t__ number; scalar_t__* origin; int /*<<< orphan*/  valid; } ;
typedef  TYPE_2__ aas_entityinfo_t ;
struct TYPE_10__ {int maxclients; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  BFL_IDEALVIEWSET ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  CHARACTERISTIC_AIM_ACCURACY ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  TFL_FUNCBOB ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 size_t YAW ; 
 int FUNC8 () ; 
 TYPE_3__ level ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 float FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int*) ; 

void FUNC14(bot_state_t *bs) {
	char info[1024];
	char mapname[128];
	int i, shootbutton;
	float aim_accuracy;
	aas_entityinfo_t entinfo;
	vec3_t dir;

	FUNC12(info, sizeof(info));

	FUNC9(mapname, FUNC5( info, "mapname" ), sizeof(mapname)-1);
	mapname[sizeof(mapname)-1] = '\0';

	if (!FUNC6(mapname, "q3tourney6") || !FUNC6(mapname, "q3tourney6_ctf") || !FUNC6(mapname, "mpq3tourney6")) {
		vec3_t mins = {694, 200, 480}, maxs = {968, 472, 680};
		vec3_t buttonorg = {304, 352, 920};
		//NOTE: NEVER use the func_bobbing in q3tourney6
		bs->tfl &= ~TFL_FUNCBOB;
		//crush area is higher in mpq3tourney6
		if (!FUNC6(mapname, "mpq3tourney6")) {
			mins[2] += 64;
			maxs[2] += 64;
		}
		//if the bot is in the bounding box of the crush area
		if (bs->origin[0] > mins[0] && bs->origin[0] < maxs[0]) {
			if (bs->origin[1] > mins[1] && bs->origin[1] < maxs[1]) {
				if (bs->origin[2] > mins[2] && bs->origin[2] < maxs[2]) {
					return;
				}
			}
		}
		shootbutton = qfalse;
		//if an enemy is in the bounding box then shoot the button
		for (i = 0; i < level.maxclients; i++) {

			if (i == bs->client) continue;
			//
			FUNC1(i, &entinfo);
			//
			if (!entinfo.valid) continue;
			//if the enemy isn't dead and the enemy isn't the bot self
			if (FUNC3(&entinfo) || entinfo.number == bs->entitynum) continue;
			//
			if (entinfo.origin[0] > mins[0] && entinfo.origin[0] < maxs[0]) {
				if (entinfo.origin[1] > mins[1] && entinfo.origin[1] < maxs[1]) {
					if (entinfo.origin[2] > mins[2] && entinfo.origin[2] < maxs[2]) {
						//if there's a team mate below the crusher
						if (FUNC2(bs, i)) {
							shootbutton = qfalse;
							break;
						}
						else if (bs->enemy == i) {
							shootbutton = qtrue;
						}
					}
				}
			}
		}
		if (shootbutton) {
			bs->flags |= BFL_IDEALVIEWSET;
			FUNC7(buttonorg, bs->eye, dir);
			FUNC13(dir, bs->ideal_viewangles);
			aim_accuracy = FUNC10(bs->character, CHARACTERISTIC_AIM_ACCURACY, 0, 1);
			bs->ideal_viewangles[PITCH] += 8 * FUNC8() * (1 - aim_accuracy);
			bs->ideal_viewangles[PITCH] = FUNC0(bs->ideal_viewangles[PITCH]);
			bs->ideal_viewangles[YAW] += 8 * FUNC8() * (1 - aim_accuracy);
			bs->ideal_viewangles[YAW] = FUNC0(bs->ideal_viewangles[YAW]);
			//
			if (FUNC4(bs->viewangles, 20, bs->ideal_viewangles)) {
				FUNC11(bs->client);
			}
		}
	}
}