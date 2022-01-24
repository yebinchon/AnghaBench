#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int /*<<< orphan*/  integer; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_12__ {int timeResidual; scalar_t__ time; scalar_t__ restartTime; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int time; int nextSnapshotEntities; int numSnapshotEntities; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SERVERINFO ; 
 int /*<<< orphan*/  CS_SYSTEMINFO ; 
 int CVAR_SERVERINFO ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 float FUNC4 (char*) ; 
 int /*<<< orphan*/  GAME_RUN_FRAME ; 
 int /*<<< orphan*/  HEARTBEAT_FOR_MASTER ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_8__* com_dedicated ; 
 TYPE_7__* com_speeds ; 
 TYPE_6__* com_sv_running ; 
 TYPE_5__* com_timescale ; 
 int cvar_modifiedFlags ; 
 int /*<<< orphan*/  gvm ; 
 TYPE_4__ sv ; 
 TYPE_3__* sv_fps ; 
 TYPE_2__* sv_killserver ; 
 TYPE_1__ svs ; 
 int time_game ; 
 char* FUNC16 (char*,float) ; 

void FUNC17( int msec ) {
	int		frameMsec;
	int		startTime;

	// the menu kills the server with this cvar
	if ( sv_killserver->integer ) {
		FUNC12 ("Server was killed");
		FUNC3( "sv_killserver", "0" );
		return;
	}

	if (!com_sv_running->integer)
	{
		// Running as a server, but no map loaded
#ifdef DEDICATED
		// Block until something interesting happens
		Sys_Sleep(-1);
#endif

		return;
	}

	// allow pause if only the local client is connected
	if ( FUNC7() ) {
		return;
	}

	// if it isn't time for the next frame, do nothing
	if ( sv_fps->integer < 1 ) {
		FUNC3( "sv_fps", "10" );
	}

	frameMsec = 1000 / sv_fps->integer * com_timescale->value;
	// don't let it scale below 1ms
	if(frameMsec < 1)
	{
		FUNC3("timescale", FUNC16("%f", sv_fps->integer / 1000.0f));
		frameMsec = 1;
	}

	sv.timeResidual += msec;

	if (!com_dedicated->integer) FUNC5 (sv.time + sv.timeResidual);

	// if time is about to hit the 32nd bit, kick all clients
	// and clear sv.time, rather
	// than checking for negative time wraparound everywhere.
	// 2giga-milliseconds = 23 days, so it won't be too often
	if ( svs.time > 0x70000000 ) {
		FUNC12( "Restarting server due to time wrapping" );
		FUNC0( FUNC16( "map %s\n", FUNC4( "mapname" ) ) );
		return;
	}
	// this can happen considerably earlier when lots of clients play and the map doesn't change
	if ( svs.nextSnapshotEntities >= 0x7FFFFFFE - svs.numSnapshotEntities ) {
		FUNC12( "Restarting server due to numSnapshotEntities wrapping" );
		FUNC0( FUNC16( "map %s\n", FUNC4( "mapname" ) ) );
		return;
	}

	if( sv.restartTime && sv.time >= sv.restartTime ) {
		sv.restartTime = 0;
		FUNC0( "map_restart 0\n" );
		return;
	}

	// update infostrings if anything has been changed
	if ( cvar_modifiedFlags & CVAR_SERVERINFO ) {
		FUNC11( CS_SERVERINFO, FUNC1( CVAR_SERVERINFO ) );
		cvar_modifiedFlags &= ~CVAR_SERVERINFO;
	}
	if ( cvar_modifiedFlags & CVAR_SYSTEMINFO ) {
		FUNC11( CS_SYSTEMINFO, FUNC2( CVAR_SYSTEMINFO ) );
		cvar_modifiedFlags &= ~CVAR_SYSTEMINFO;
	}

	if ( com_speeds->integer ) {
		startTime = FUNC13 ();
	} else {
		startTime = 0;	// quite a compiler warning
	}

	// update ping based on the all received frames
	FUNC6();

	if (com_dedicated->integer) FUNC5 (sv.time);

	// run the game simulation in chunks
	while ( sv.timeResidual >= frameMsec ) {
		sv.timeResidual -= frameMsec;
		svs.time += frameMsec;
		sv.time += frameMsec;

		// let everything in the world think and move
		FUNC15 (gvm, GAME_RUN_FRAME, sv.time);
	}

	if ( com_speeds->integer ) {
		time_game = FUNC13 () - startTime;
	}

	// check timeouts
	FUNC8();

	// send messages back to the clients
	FUNC10();

	// send a heartbeat to the master if needed
	FUNC9(HEARTBEAT_FOR_MASTER);
}