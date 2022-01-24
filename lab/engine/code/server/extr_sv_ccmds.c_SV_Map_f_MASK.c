#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  mapname ;
typedef  int /*<<< orphan*/  expanded ;
struct TYPE_2__ {scalar_t__ integer; } ;

/* Variables and functions */
 int CVAR_LATCH ; 
 int CVAR_SERVERINFO ; 
 int CVAR_USERINFO ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ GT_FFA ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_1__* sv_gametype ; 

__attribute__((used)) static void FUNC12( void ) {
	char		*cmd;
	char		*map;
	qboolean	killBots, cheat;
	char		expanded[MAX_QPATH];
	char		mapname[MAX_QPATH];

	map = FUNC0(1);
	if ( !map ) {
		return;
	}

	// make sure the level exists before trying to change, so that
	// a typo at the server console won't end the game
	FUNC2 (expanded, sizeof(expanded), "maps/%s.bsp", map);
	if ( FUNC7 (expanded, NULL) == -1 ) {
		FUNC1 ("Can't find map %s\n", expanded);
		return;
	}

	// force latched values to get set
	FUNC3 ("g_gametype", "0", CVAR_SERVERINFO | CVAR_USERINFO | CVAR_LATCH );

	cmd = FUNC0(0);
	if( FUNC9( cmd, "sp", 2 ) == 0 ) {
		FUNC6( "g_gametype", GT_SINGLE_PLAYER );
		FUNC6( "g_doWarmup", 0 );
		// may not set sv_maxclients directly, always set latched
		FUNC5( "sv_maxclients", "8" );
		cmd += 2;
		if (!FUNC8( cmd, "devmap" ) ) {
			cheat = qtrue;
		} else {
			cheat = qfalse;
		}
		killBots = qtrue;
	}
	else {
		if ( !FUNC8( cmd, "devmap" ) ) {
			cheat = qtrue;
			killBots = qtrue;
		} else {
			cheat = qfalse;
			killBots = qfalse;
		}
		if( sv_gametype->integer == GT_SINGLE_PLAYER ) {
			FUNC6( "g_gametype", GT_FFA );
		}
	}

	// save the map name here cause on a map restart we reload the q3config.cfg
	// and thus nuke the arguments of the map command
	FUNC10(mapname, map, sizeof(mapname));

	// start up the map
	FUNC11( mapname, killBots );

	// set the cheat value
	// if the level was started with "map <levelname>", then
	// cheats will not be allowed.  If started with "devmap <levelname>"
	// then cheats will be allowed
	if ( cheat ) {
		FUNC4( "sv_cheats", "1" );
	} else {
		FUNC4( "sv_cheats", "0" );
	}
}