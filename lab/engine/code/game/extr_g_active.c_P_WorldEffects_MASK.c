#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_10__ {int waterlevel; scalar_t__ health; int damage; scalar_t__ pain_debounce_time; int watertype; TYPE_2__* client; } ;
typedef  TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ time; } ;
struct TYPE_8__ {scalar_t__* powerups; } ;
struct TYPE_9__ {scalar_t__ airOutTime; TYPE_1__ ps; scalar_t__ noclip; } ;

/* Variables and functions */
 int CONTENTS_LAVA ; 
 int CONTENTS_SLIME ; 
 int /*<<< orphan*/  DAMAGE_NO_ARMOR ; 
 int /*<<< orphan*/  EV_POWERUP_BATTLESUIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOD_LAVA ; 
 int /*<<< orphan*/  MOD_SLIME ; 
 int /*<<< orphan*/  MOD_WATER ; 
 size_t PW_BATTLESUIT ; 
 TYPE_4__ level ; 

void FUNC2( gentity_t *ent ) {
	qboolean	envirosuit;
	int			waterlevel;

	if ( ent->client->noclip ) {
		ent->client->airOutTime = level.time + 12000;	// don't need air
		return;
	}

	waterlevel = ent->waterlevel;

	envirosuit = ent->client->ps.powerups[PW_BATTLESUIT] > level.time;

	//
	// check for drowning
	//
	if ( waterlevel == 3 ) {
		// envirosuit give air
		if ( envirosuit ) {
			ent->client->airOutTime = level.time + 10000;
		}

		// if out of air, start drowning
		if ( ent->client->airOutTime < level.time) {
			// drown!
			ent->client->airOutTime += 1000;
			if ( ent->health > 0 ) {
				// take more damage the longer underwater
				ent->damage += 2;
				if (ent->damage > 15)
					ent->damage = 15;

				// don't play a normal pain sound
				ent->pain_debounce_time = level.time + 200;

				FUNC1 (ent, NULL, NULL, NULL, NULL, 
					ent->damage, DAMAGE_NO_ARMOR, MOD_WATER);
			}
		}
	} else {
		ent->client->airOutTime = level.time + 12000;
		ent->damage = 2;
	}

	//
	// check for sizzle damage (move to pmove?)
	//
	if (waterlevel && 
		(ent->watertype&(CONTENTS_LAVA|CONTENTS_SLIME)) ) {
		if (ent->health > 0
			&& ent->pain_debounce_time <= level.time	) {

			if ( envirosuit ) {
				FUNC0( ent, EV_POWERUP_BATTLESUIT, 0 );
			} else {
				if (ent->watertype & CONTENTS_LAVA) {
					FUNC1 (ent, NULL, NULL, NULL, NULL, 
						30*waterlevel, 0, MOD_LAVA);
				}

				if (ent->watertype & CONTENTS_SLIME) {
					FUNC1 (ent, NULL, NULL, NULL, NULL, 
						10*waterlevel, 0, MOD_SLIME);
				}
			}
		}
	}
}