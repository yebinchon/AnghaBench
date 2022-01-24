#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ ltgtype; scalar_t__ enemy; } ;
typedef  TYPE_1__ bot_state_t ;
typedef  int /*<<< orphan*/  aas_entityinfo_t ;
struct TYPE_12__ {scalar_t__ entitynum; } ;
struct TYPE_11__ {scalar_t__ entitynum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ GT_OBELISK ; 
 scalar_t__ LTG_ATTACKENEMYBASE ; 
 scalar_t__ LTG_GETFLAG ; 
 TYPE_3__ blueobelisk ; 
 scalar_t__ gametype ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_2__ redobelisk ; 

int FUNC8(bot_state_t *bs) {
	aas_entityinfo_t entinfo;

	if (gametype == GT_CTF) {
		//always retreat when carrying a CTF flag
		if (FUNC2(bs))
			return qtrue;
	}
#ifdef MISSIONPACK
	else if (gametype == GT_1FCTF) {
		//if carrying the flag then always retreat
		if (Bot1FCTFCarryingFlag(bs))
			return qtrue;
	}
	else if (gametype == GT_OBELISK) {
		//the bots should be dedicated to attacking the enemy obelisk
		if (bs->ltgtype == LTG_ATTACKENEMYBASE) {
			if (bs->enemy != redobelisk.entitynum &&
						bs->enemy != blueobelisk.entitynum) {
				return qtrue;
			}
		}
		if (BotFeelingBad(bs) > 50) {
			return qtrue;
		}
		return qfalse;
	}
	else if (gametype == GT_HARVESTER) {
		//if carrying cubes then always retreat
		if (BotHarvesterCarryingCubes(bs)) return qtrue;
	}
#endif
	//
	if (bs->enemy >= 0) {
		FUNC3(bs->enemy, &entinfo);
		// if the enemy is carrying a flag
		if (FUNC7(&entinfo)) return qfalse;
#ifdef MISSIONPACK
		// if the enemy is carrying cubes
		if (EntityCarriesCubes(&entinfo)) return qfalse;
#endif
	}
	//if the bot is getting the flag
	if (bs->ltgtype == LTG_GETFLAG)
		return qtrue;
	//
	if (FUNC1(bs) < 50)
		return qtrue;
	return qfalse;
}