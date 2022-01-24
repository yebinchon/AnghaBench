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
typedef  int /*<<< orphan*/  serverinfo ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  map ;
struct TYPE_2__ {scalar_t__ integer; } ;

/* Variables and functions */
 int BOT_BEGIN_DELAY_BASE ; 
 int /*<<< orphan*/  CVAR_SERVERINFO ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char const*,char*) ; 
 int MAX_INFO_STRING ; 
 int MAX_QPATH ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  bot_minplayers ; 
 TYPE_1__ g_gametype ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

void FUNC11( qboolean restart ) {
	int			fragLimit;
	int			timeLimit;
	const char	*arenainfo;
	char		*strValue;
	int			basedelay;
	char		map[MAX_QPATH];
	char		serverinfo[MAX_INFO_STRING];

	FUNC2();
	FUNC1();

	FUNC8( &bot_minplayers, "bot_minplayers", "0", CVAR_SERVERINFO );

	if( g_gametype.integer == GT_SINGLE_PLAYER ) {
		FUNC10( serverinfo, sizeof(serverinfo) );
		FUNC6( map, FUNC4( serverinfo, "mapname" ), sizeof(map) );
		arenainfo = FUNC0( map );
		if ( !arenainfo ) {
			return;
		}

		strValue = FUNC4( arenainfo, "fraglimit" );
		fragLimit = FUNC7( strValue );
		if ( fragLimit ) {
			FUNC9( "fraglimit", strValue );
		}
		else {
			FUNC9( "fraglimit", "0" );
		}

		strValue = FUNC4( arenainfo, "timelimit" );
		timeLimit = FUNC7( strValue );
		if ( timeLimit ) {
			FUNC9( "timelimit", strValue );
		}
		else {
			FUNC9( "timelimit", "0" );
		}

		if ( !fragLimit && !timeLimit ) {
			FUNC9( "fraglimit", "10" );
			FUNC9( "timelimit", "0" );
		}

		basedelay = BOT_BEGIN_DELAY_BASE;
		strValue = FUNC4( arenainfo, "special" );
		if( FUNC5( strValue, "training" ) == 0 ) {
			basedelay += 10000;
		}

		if( !restart ) {
			FUNC3( FUNC4( arenainfo, "bots" ), basedelay );
		}
	}
}