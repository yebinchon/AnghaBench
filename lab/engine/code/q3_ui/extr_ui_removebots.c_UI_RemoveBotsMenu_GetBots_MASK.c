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
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {size_t numBots; int* botClientNums; } ;

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 scalar_t__ CS_SERVERINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ removeBotsMenuInfo ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 

__attribute__((used)) static void FUNC3( void ) {
	int		numPlayers;
	int		isBot;
	int		n;
	char	info[MAX_INFO_STRING];

	FUNC2( CS_SERVERINFO, info, sizeof(info) );
	numPlayers = FUNC1( FUNC0( info, "sv_maxclients" ) );
	removeBotsMenuInfo.numBots = 0;

	for( n = 0; n < numPlayers; n++ ) {
		FUNC2( CS_PLAYERS + n, info, MAX_INFO_STRING );

		isBot = FUNC1( FUNC0( info, "skill" ) );
		if( !isBot ) {
			continue;
		}

		removeBotsMenuInfo.botClientNums[removeBotsMenuInfo.numBots] = n;
		removeBotsMenuInfo.numBots++;
	}
}