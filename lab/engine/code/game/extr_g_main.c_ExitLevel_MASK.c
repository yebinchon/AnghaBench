#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nextmap ;
struct TYPE_8__ {scalar_t__ connected; } ;
struct TYPE_7__ {scalar_t__* persistant; } ;
struct TYPE_9__ {TYPE_2__ pers; TYPE_1__ ps; } ;
typedef  TYPE_3__ gclient_t ;
typedef  int /*<<< orphan*/  d1 ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {TYPE_3__* clients; scalar_t__* teamScores; scalar_t__ intermissiontime; int /*<<< orphan*/ * changemap; scalar_t__ restarted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CON_CONNECTED ; 
 scalar_t__ CON_CONNECTING ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 scalar_t__ GT_TOURNAMENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_STRING_CHARS ; 
 size_t PERS_SCORE ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t TEAM_BLUE ; 
 size_t TEAM_RED ; 
 TYPE_6__ g_gametype ; 
 TYPE_5__ g_maxclients ; 
 TYPE_4__ level ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7 (void) {
	int		i;
	gclient_t *cl;
	char nextmap[MAX_STRING_CHARS];
	char d1[MAX_STRING_CHARS];

	//bot interbreeding
	FUNC0();

	// if we are running a tournement map, kick the loser to spectator status,
	// which will automatically grab the next spectator and restart
	if ( g_gametype.integer == GT_TOURNAMENT  ) {
		if ( !level.restarted ) {
			FUNC3();
			FUNC6( EXEC_APPEND, "map_restart 0\n" );
			level.restarted = qtrue;
			level.changemap = NULL;
			level.intermissiontime = 0;
		}
		return;	
	}

	FUNC5( "nextmap", nextmap, sizeof(nextmap) );
	FUNC5( "d1", d1, sizeof(d1) );

	if( !FUNC2( nextmap, "map_restart 0" ) && FUNC2( d1, "" ) ) {
		FUNC4( "nextmap", "vstr d2" );
		FUNC6( EXEC_APPEND, "vstr d1\n" );
	} else {
		FUNC6( EXEC_APPEND, "vstr nextmap\n" );
	}

	level.changemap = NULL;
	level.intermissiontime = 0;

	// reset all the scores so we don't enter the intermission again
	level.teamScores[TEAM_RED] = 0;
	level.teamScores[TEAM_BLUE] = 0;
	for ( i=0 ; i< g_maxclients.integer ; i++ ) {
		cl = level.clients + i;
		if ( cl->pers.connected != CON_CONNECTED ) {
			continue;
		}
		cl->ps.persistant[PERS_SCORE] = 0;
	}

	// we need to do this here before changing to CON_CONNECTING
	FUNC1();

	// change all client states to connecting, so the early players into the
	// next level will know the others aren't done reconnecting
	for (i=0 ; i< g_maxclients.integer ; i++) {
		if ( level.clients[i].pers.connected == CON_CONNECTED ) {
			level.clients[i].pers.connected = CON_CONNECTING;
		}
	}

}