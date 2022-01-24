#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  table_t ;
typedef  int /*<<< orphan*/  protocol ;
struct TYPE_6__ {int curvalue; } ;
struct TYPE_8__ {int maxservers; TYPE_2__ gametype; scalar_t__ refreshtime; scalar_t__ numqueriedservers; scalar_t__* numservers; scalar_t__ nextpingtime; scalar_t__ currentping; int /*<<< orphan*/  refreshservers; TYPE_1__* pinglist; int /*<<< orphan*/  serverlist; } ;
struct TYPE_7__ {scalar_t__ realtime; } ;
struct TYPE_5__ {char* adrstr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  GAMES_ALL 132 
#define  GAMES_CTF 131 
#define  GAMES_FFA 130 
#define  GAMES_TEAMPLAY 129 
#define  GAMES_TOURNEY 128 
 int MAX_PINGREQUESTS ; 
 scalar_t__ UIAS_GLOBAL0 ; 
 scalar_t__ UIAS_GLOBAL5 ; 
 scalar_t__ UIAS_LOCAL ; 
 TYPE_4__ g_arenaservers ; 
 scalar_t__ g_emptyservers ; 
 scalar_t__ g_fullservers ; 
 scalar_t__ g_servertype ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_3__ uis ; 
 char* FUNC9 (char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC10( void )
{
	int		i;
	char	myargs[32], protocol[32];

	FUNC1( g_arenaservers.serverlist, 0, g_arenaservers.maxservers*sizeof(table_t) );

	for (i=0; i<MAX_PINGREQUESTS; i++)
	{
		g_arenaservers.pinglist[i].adrstr[0] = '\0';
		FUNC8( i );
	}

	g_arenaservers.refreshservers    = qtrue;
	g_arenaservers.currentping       = 0;
	g_arenaservers.nextpingtime      = 0;
	*g_arenaservers.numservers       = 0;
	g_arenaservers.numqueriedservers = 0;

	// allow max 5 seconds for responses
	g_arenaservers.refreshtime = uis.realtime + 5000;

	// place menu in zeroed state
	FUNC0();

	if( g_servertype == UIAS_LOCAL ) {
		FUNC5( EXEC_APPEND, "localservers\n" );
		return;
	}

	if( g_servertype >= UIAS_GLOBAL0 && g_servertype <= UIAS_GLOBAL5 ) {
		switch( g_arenaservers.gametype.curvalue ) {
		default:
		case GAMES_ALL:
			myargs[0] = 0;
			break;

		case GAMES_FFA:
			FUNC3( myargs, " ffa" );
			break;

		case GAMES_TEAMPLAY:
			FUNC3( myargs, " team" );
			break;

		case GAMES_TOURNEY:
			FUNC3( myargs, " tourney" );
			break;

		case GAMES_CTF:
			FUNC3( myargs, " ctf" );
			break;
		}


		if (g_emptyservers) {
			FUNC2(myargs, " empty");
		}

		if (g_fullservers) {
			FUNC2(myargs, " full");
		}

		protocol[0] = '\0';
		FUNC6( "debug_protocol", protocol, sizeof(protocol) );
		if (FUNC4(protocol)) {
			FUNC5( EXEC_APPEND, FUNC9( "globalservers %d %s%s\n", g_servertype - UIAS_GLOBAL0, protocol, myargs ));
		}
		else {
			FUNC5( EXEC_APPEND, FUNC9( "globalservers %d %d%s\n", g_servertype - UIAS_GLOBAL0, (int)FUNC7( "protocol" ), myargs ) );
		}
	}
}