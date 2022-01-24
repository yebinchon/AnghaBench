#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int time; scalar_t__ intermissiontime; } ;
struct TYPE_6__ {int integer; } ;

/* Variables and functions */
 scalar_t__ GT_FFA ; 
 scalar_t__ GT_TEAM ; 
 scalar_t__ GT_TOURNAMENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TEAM_BLUE ; 
 int TEAM_FREE ; 
 int TEAM_RED ; 
 int TEAM_SPECTATOR ; 
 TYPE_1__ bot_minplayers ; 
 TYPE_4__ g_gametype ; 
 TYPE_3__ g_maxclients ; 
 TYPE_2__ level ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5( void ) {
	int minplayers;
	int humanplayers, botplayers;
	static int checkminimumplayers_time;

	if (level.intermissiontime) return;
	//only check once each 10 seconds
	if (checkminimumplayers_time > level.time - 10000) {
		return;
	}
	checkminimumplayers_time = level.time;
	FUNC4(&bot_minplayers);
	minplayers = bot_minplayers.integer;
	if (minplayers <= 0) return;

	if (g_gametype.integer >= GT_TEAM) {
		if (minplayers >= g_maxclients.integer / 2) {
			minplayers = (g_maxclients.integer / 2) -1;
		}

		humanplayers = FUNC2( TEAM_RED );
		botplayers = FUNC1(	TEAM_RED );
		//
		if (humanplayers + botplayers < minplayers) {
			FUNC0( TEAM_RED );
		} else if (humanplayers + botplayers > minplayers && botplayers) {
			FUNC3( TEAM_RED );
		}
		//
		humanplayers = FUNC2( TEAM_BLUE );
		botplayers = FUNC1( TEAM_BLUE );
		//
		if (humanplayers + botplayers < minplayers) {
			FUNC0( TEAM_BLUE );
		} else if (humanplayers + botplayers > minplayers && botplayers) {
			FUNC3( TEAM_BLUE );
		}
	}
	else if (g_gametype.integer == GT_TOURNAMENT ) {
		if (minplayers >= g_maxclients.integer) {
			minplayers = g_maxclients.integer-1;
		}
		humanplayers = FUNC2( -1 );
		botplayers = FUNC1( -1 );
		//
		if (humanplayers + botplayers < minplayers) {
			FUNC0( TEAM_FREE );
		} else if (humanplayers + botplayers > minplayers && botplayers) {
			// try to remove spectators first
			if (!FUNC3( TEAM_SPECTATOR )) {
				// just remove the bot that is playing
				FUNC3( -1 );
			}
		}
	}
	else if (g_gametype.integer == GT_FFA) {
		if (minplayers >= g_maxclients.integer) {
			minplayers = g_maxclients.integer-1;
		}
		humanplayers = FUNC2( TEAM_FREE );
		botplayers = FUNC1( TEAM_FREE );
		//
		if (humanplayers + botplayers < minplayers) {
			FUNC0( TEAM_FREE );
		} else if (humanplayers + botplayers > minplayers && botplayers) {
			FUNC3( TEAM_FREE );
		}
	}
}