#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int clientNum; } ;
typedef  TYPE_1__ uiClientState_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_5__ {int numBots; int /*<<< orphan*/ * botNames; void* gametype; int /*<<< orphan*/ * bots; } ;

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 scalar_t__ CS_SERVERINFO ; 
 char* FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (char*) ; 
 TYPE_3__ teamOrdersMenuInfo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 

__attribute__((used)) static void FUNC6( void ) {
	uiClientState_t	cs;
	int		numPlayers;
	int		isBot;
	int		n;
	char	playerTeam = '3';
	char	botTeam;
	char	info[MAX_INFO_STRING];

	for( n = 0; n < 9; n++ ) {
		teamOrdersMenuInfo.bots[n] = teamOrdersMenuInfo.botNames[n];
	}

	FUNC4( &cs );

	FUNC2( teamOrdersMenuInfo.botNames[0], "Everyone", 16 );
	teamOrdersMenuInfo.numBots = 1;

	FUNC5( CS_SERVERINFO, info, sizeof(info) );
	numPlayers = FUNC3( FUNC0( info, "sv_maxclients" ) );
	teamOrdersMenuInfo.gametype = FUNC3( FUNC0( info, "g_gametype" ) );

	for( n = 0; n < numPlayers && teamOrdersMenuInfo.numBots < 9; n++ ) {
		FUNC5( CS_PLAYERS + n, info, MAX_INFO_STRING );

		if( n == cs.clientNum ) {
			playerTeam = *FUNC0( info, "t" );
			continue;
		}

		isBot = FUNC3( FUNC0( info, "skill" ) );
		if( !isBot ) {
			continue;
		}

		botTeam = *FUNC0( info, "t" );
		if( botTeam != playerTeam ) {
			continue;
		}

		FUNC2( teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.numBots], FUNC0( info, "n" ), 16 );
		FUNC1( teamOrdersMenuInfo.botNames[teamOrdersMenuInfo.numBots] );
		teamOrdersMenuInfo.numBots++;
	}
}