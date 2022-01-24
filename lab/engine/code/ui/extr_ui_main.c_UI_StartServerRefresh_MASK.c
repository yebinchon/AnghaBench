#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t tm_mon; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; scalar_t__ tm_year; int /*<<< orphan*/  tm_mday; } ;
typedef  TYPE_3__ qtime_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_8__ {scalar_t__ realTime; } ;
struct TYPE_7__ {scalar_t__ refreshtime; scalar_t__ numPlayersOnServers; scalar_t__ numDisplayServers; scalar_t__ nextDisplayRefresh; int /*<<< orphan*/  refreshActive; } ;
struct TYPE_11__ {TYPE_2__ uiDC; TYPE_1__ serverStatus; } ;
struct TYPE_10__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_NOW ; 
 int /*<<< orphan*/ * MonthAbbrev ; 
 scalar_t__ UIAS_GLOBAL0 ; 
 scalar_t__ UIAS_GLOBAL5 ; 
 scalar_t__ UIAS_LOCAL ; 
 char* FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_5__ uiInfo ; 
 TYPE_4__ ui_netSource ; 
 char* FUNC11 (char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC12(qboolean full, qboolean force)
{
	char	*ptr;
	int		lanSource;
	qtime_t q;

	// This function is called with force=qfalse when server browser menu opens or net source changes.
	// Automatically update local and favorite servers.
	// Only auto update master server list if there is no server info cache.
	if ( !force && ( ui_netSource.integer >= UIAS_GLOBAL0 && ui_netSource.integer <= UIAS_GLOBAL5 ) ) {
		if ( FUNC7( FUNC1() ) > 0 ) {
			return; // have cached list
		}
	}

	FUNC10(&q);
	FUNC5( FUNC11("ui_lastServerRefresh_%i", ui_netSource.integer), FUNC11("%s-%i, %i at %i:%02i", MonthAbbrev[q.tm_mon],q.tm_mday, 1900+q.tm_year,q.tm_hour,q.tm_min));

	if (!full) {
		FUNC2();
		return;
	}

	uiInfo.serverStatus.refreshActive = qtrue;
	uiInfo.serverStatus.nextDisplayRefresh = uiInfo.uiDC.realTime + 1000;
	// clear number of displayed servers
	uiInfo.serverStatus.numDisplayServers = 0;
	uiInfo.serverStatus.numPlayersOnServers = 0;

	lanSource = FUNC1();
	// mark all servers as visible so we store ping updates for them
	FUNC8(lanSource, -1, qtrue);
	// reset all the pings
	FUNC9(lanSource);
	//
	if( ui_netSource.integer == UIAS_LOCAL ) {
		FUNC4( EXEC_NOW, "localservers\n" );
		uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 5000;
		return;
	}

	uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 5000;
	if( ui_netSource.integer >= UIAS_GLOBAL0 && ui_netSource.integer <= UIAS_GLOBAL5 ) {

		ptr = FUNC0("debug_protocol");
		if (FUNC3(ptr)) {
			FUNC4( EXEC_NOW, FUNC11( "globalservers %d %s full empty\n", ui_netSource.integer - UIAS_GLOBAL0, ptr ) );
		}
		else {
			FUNC4( EXEC_NOW, FUNC11( "globalservers %d %d full empty\n", ui_netSource.integer - UIAS_GLOBAL0, (int)FUNC6( "protocol" ) ) );
		}
	}
}