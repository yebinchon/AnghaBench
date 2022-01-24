#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ clientNum; scalar_t__ damageEvent; scalar_t__* persistant; scalar_t__ viewheight; scalar_t__ damageCount; int /*<<< orphan*/  damagePitch; int /*<<< orphan*/  damageYaw; } ;
typedef  TYPE_3__ playerState_t ;
struct TYPE_14__ {scalar_t__ duckChange; int /*<<< orphan*/  time; int /*<<< orphan*/  duckTime; TYPE_2__* snap; scalar_t__ mapRestart; int /*<<< orphan*/  thisFrameTeleport; } ;
struct TYPE_11__ {scalar_t__ pm_type; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t PERS_SPAWN_COUNT ; 
 size_t PERS_TEAM ; 
 scalar_t__ PM_INTERMISSION ; 
 scalar_t__ TEAM_SPECTATOR ; 
 TYPE_4__ cg ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC5( playerState_t *ps, playerState_t *ops ) {
	// check for changing follow mode
	if ( ps->clientNum != ops->clientNum ) {
		cg.thisFrameTeleport = qtrue;
		// make sure we don't get any unwanted transition effects
		*ops = *ps;
	}

	// damage events (player is getting wounded)
	if ( ps->damageEvent != ops->damageEvent && ps->damageCount ) {
		FUNC3( ps->damageYaw, ps->damagePitch, ps->damageCount );
	}

	// respawning
	if ( ps->persistant[PERS_SPAWN_COUNT] != ops->persistant[PERS_SPAWN_COUNT] ) {
		FUNC4();
	}

	if ( cg.mapRestart ) {
		FUNC4();
		cg.mapRestart = qfalse;
	}

	if ( cg.snap->ps.pm_type != PM_INTERMISSION 
		&& ps->persistant[PERS_TEAM] != TEAM_SPECTATOR ) {
		FUNC1( ps, ops );
	}

	// check for going low on ammo
	FUNC0();

	// run events
	FUNC2( ps, ops );

	// smooth the ducking viewheight change
	if ( ps->viewheight != ops->viewheight ) {
		cg.duckChange = ps->viewheight - ops->viewheight;
		cg.duckTime = cg.time;
	}
}