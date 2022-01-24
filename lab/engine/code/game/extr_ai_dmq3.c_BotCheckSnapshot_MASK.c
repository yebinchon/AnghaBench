#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  eventParm; int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ entityState_t ;
struct TYPE_15__ {int /*<<< orphan*/  externalEventParm; int /*<<< orphan*/  externalEvent; } ;
struct TYPE_17__ {TYPE_1__ cur_ps; int /*<<< orphan*/  client; scalar_t__ numproxmines; scalar_t__ kamikazebody; int /*<<< orphan*/  ms; } ;
typedef  TYPE_3__ bot_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVOID_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC7(bot_state_t *bs) {
	int ent;
	entityState_t state;

	//remove all avoid spots
	FUNC6(bs->ms, vec3_origin, 0, AVOID_CLEAR);
	//reset kamikaze body
	bs->kamikazebody = 0;
	//reset number of proxmines
	bs->numproxmines = 0;
	//
	ent = 0;
	while( ( ent = FUNC1( bs->client, ent, &state ) ) != -1 ) {
		//check the entity state for events
		FUNC2(bs, &state);
		//check for grenades the bot should avoid
		FUNC3(bs, &state);
		//
#ifdef MISSIONPACK
		//check for proximity mines which the bot should deactivate
		BotCheckForProxMines(bs, &state);
		//check for dead bodies with the kamikaze effect which should be gibbed
		BotCheckForKamikazeBody(bs, &state);
#endif
	}
	//check the player state for events
	FUNC0(bs->client, &state);
	//copy the player state events to the entity state
	state.event = bs->cur_ps.externalEvent;
	state.eventParm = bs->cur_ps.externalEventParm;
	//
	FUNC2(bs, &state);
}