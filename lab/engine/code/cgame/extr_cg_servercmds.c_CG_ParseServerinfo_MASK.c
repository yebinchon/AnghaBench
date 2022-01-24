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
struct TYPE_2__ {int /*<<< orphan*/  blueTeam; int /*<<< orphan*/  redTeam; int /*<<< orphan*/  mapname; void* maxclients; void* timelimit; void* capturelimit; void* fraglimit; void* teamflags; void* dmflags; void* gametype; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS_SERVERINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC4 (char*) ; 
 TYPE_1__ cgs ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,void*) ; 

void FUNC7( void ) {
	const char	*info;
	char	*mapname;

	info = FUNC0( CS_SERVERINFO );
	cgs.gametype = FUNC4( FUNC2( info, "g_gametype" ) );
	FUNC5("g_gametype", FUNC6("%i", cgs.gametype));
	cgs.dmflags = FUNC4( FUNC2( info, "dmflags" ) );
	cgs.teamflags = FUNC4( FUNC2( info, "teamflags" ) );
	cgs.fraglimit = FUNC4( FUNC2( info, "fraglimit" ) );
	cgs.capturelimit = FUNC4( FUNC2( info, "capturelimit" ) );
	cgs.timelimit = FUNC4( FUNC2( info, "timelimit" ) );
	cgs.maxclients = FUNC4( FUNC2( info, "sv_maxclients" ) );
	mapname = FUNC2( info, "mapname" );
	FUNC1( cgs.mapname, sizeof( cgs.mapname ), "maps/%s.bsp", mapname );
	FUNC3( cgs.redTeam, FUNC2( info, "g_redTeam" ), sizeof(cgs.redTeam) );
	FUNC5("g_redTeam", cgs.redTeam);
	FUNC3( cgs.blueTeam, FUNC2( info, "g_blueTeam" ), sizeof(cgs.blueTeam) );
	FUNC5("g_blueTeam", cgs.blueTeam);
}