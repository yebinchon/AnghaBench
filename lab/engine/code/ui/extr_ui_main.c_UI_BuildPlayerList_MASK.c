#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int clientNum; } ;
typedef  TYPE_1__ uiClientState_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_5__ {int playerNumber; size_t playerCount; size_t myTeamCount; int* teamClientNums; int /*<<< orphan*/ * teamNames; void* teamLeader; int /*<<< orphan*/ * playerNames; } ;

/* Variables and functions */
 int CS_PLAYERS ; 
 int CS_SERVERINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 TYPE_2__ uiInfo ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9( void ) {
	uiClientState_t	cs;
	int		n, count, team, team2, playerTeamNumber;
	char	info[MAX_INFO_STRING];

	FUNC6( &cs );
	FUNC7( CS_PLAYERS + cs.clientNum, info, MAX_INFO_STRING );
	uiInfo.playerNumber = cs.clientNum;
	uiInfo.teamLeader = FUNC3(FUNC0(info, "tl"));
	team = FUNC3(FUNC0(info, "t"));
	FUNC7( CS_SERVERINFO, info, sizeof(info) );
	count = FUNC3( FUNC0( info, "sv_maxclients" ) );
	uiInfo.playerCount = 0;
	uiInfo.myTeamCount = 0;
	playerTeamNumber = 0;
	for( n = 0; n < count; n++ ) {
		FUNC7( CS_PLAYERS + n, info, MAX_INFO_STRING );

		if (info[0]) {
			FUNC2( uiInfo.playerNames[uiInfo.playerCount], FUNC0( info, "n" ), MAX_NAME_LENGTH );
			FUNC1( uiInfo.playerNames[uiInfo.playerCount] );
			uiInfo.playerCount++;
			team2 = FUNC3(FUNC0(info, "t"));
			if (team2 == team) {
				FUNC2( uiInfo.teamNames[uiInfo.myTeamCount], FUNC0( info, "n" ), MAX_NAME_LENGTH );
				FUNC1( uiInfo.teamNames[uiInfo.myTeamCount] );
				uiInfo.teamClientNums[uiInfo.myTeamCount] = n;
				if (uiInfo.playerNumber == n) {
					playerTeamNumber = uiInfo.myTeamCount;
				}
				uiInfo.myTeamCount++;
			}
		}
	}

	if (!uiInfo.teamLeader) {
		FUNC4("cg_selectedPlayer", FUNC8("%d", playerTeamNumber));
	}

	n = FUNC5("cg_selectedPlayer");
	if (n < 0 || n > uiInfo.myTeamCount) {
		n = 0;
	}
	if (n < uiInfo.myTeamCount) {
		FUNC4("cg_selectedPlayerName", uiInfo.teamNames[n]);
	}
}