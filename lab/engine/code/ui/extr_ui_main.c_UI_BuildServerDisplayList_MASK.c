#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ realTime; } ;
struct TYPE_13__ {scalar_t__ nextDisplayRefresh; int motdLen; int motdWidth; scalar_t__ refreshtime; scalar_t__ numPlayersOnServers; scalar_t__ numDisplayServers; int /*<<< orphan*/  motd; } ;
struct TYPE_20__ {TYPE_3__ uiDC; TYPE_2__ serverStatus; TYPE_1__* joinGameTypes; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {size_t integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {size_t integer; } ;
struct TYPE_12__ {int gtEnum; } ;
struct TYPE_11__ {int /*<<< orphan*/  basedir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEEDER_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UIAS_FAVORITES ; 
 scalar_t__ UIAS_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int qtrue ; 
 TYPE_10__* serverFilters ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int,char*,int) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 TYPE_9__ uiInfo ; 
 TYPE_8__ ui_browserShowEmpty ; 
 TYPE_7__ ui_browserShowFull ; 
 TYPE_6__ ui_joinGameType ; 
 TYPE_5__ ui_netSource ; 
 TYPE_4__ ui_serverFilterType ; 

__attribute__((used)) static void FUNC15(int force) {
	int i, count, clients, maxClients, ping, game, len, visible;
	char info[MAX_STRING_CHARS];
//	qboolean startRefresh = qtrue; TTimo: unused
	static int numinvisible;
	int	lanSource;

	if (!(force || uiInfo.uiDC.realTime > uiInfo.serverStatus.nextDisplayRefresh)) {
		return;
	}
	// if we shouldn't reset
	if ( force == 2 ) {
		force = 0;
	}

	// do motd updates here too
	FUNC9( "cl_motdString", uiInfo.serverStatus.motd, sizeof(uiInfo.serverStatus.motd) );
	len = FUNC8(uiInfo.serverStatus.motd);
	if (len == 0) {
		FUNC7(uiInfo.serverStatus.motd, "Welcome to Team Arena!");
		len = FUNC8(uiInfo.serverStatus.motd);
	} 
	if (len != uiInfo.serverStatus.motdLen) {
		uiInfo.serverStatus.motdLen = len;
		uiInfo.serverStatus.motdWidth = -1;
	} 

	lanSource = FUNC5();

	if (force) {
		numinvisible = 0;
		// clear number of displayed servers
		uiInfo.serverStatus.numDisplayServers = 0;
		uiInfo.serverStatus.numPlayersOnServers = 0;
		// set list box index to zero
		FUNC1(NULL, FEEDER_SERVERS, 0, NULL);
		// mark all servers as visible so we store ping updates for them
		FUNC13(lanSource, -1, qtrue);
	}

	// get the server count (comes from the master)
	count = FUNC10(lanSource);
	if (count == -1 || (ui_netSource.integer == UIAS_LOCAL && count == 0) ) {
		// still waiting on a response from the master
		uiInfo.serverStatus.numDisplayServers = 0;
		uiInfo.serverStatus.numPlayersOnServers = 0;
		uiInfo.serverStatus.nextDisplayRefresh = uiInfo.uiDC.realTime + 500;
		return;
	}

	visible = qfalse;
	for (i = 0; i < count; i++) {
		// if we already got info for this server
		if (!FUNC14(lanSource, i)) {
			continue;
		}
		visible = qtrue;
		// get the ping for this server
		ping = FUNC12(lanSource, i);
		if (ping > 0 || ui_netSource.integer == UIAS_FAVORITES) {
			// Remove favorite servers so they do not appear multiple times
			// or appear when the cached server info was not filtered out
			// but the new server info is filtered out.
			if (ui_netSource.integer == UIAS_FAVORITES) {
				FUNC4(i);
			}

			FUNC11(lanSource, i, info, MAX_STRING_CHARS);

			clients = FUNC6(FUNC0(info, "clients"));

			if (ui_browserShowEmpty.integer == 0) {
				if (clients == 0) {
					if (ping > 0) {
						FUNC13(lanSource, i, qfalse);
					}
					continue;
				}
			}

			if (ui_browserShowFull.integer == 0) {
				maxClients = FUNC6(FUNC0(info, "sv_maxclients"));
				if (clients == maxClients) {
					if (ping > 0) {
						FUNC13(lanSource, i, qfalse);
					}
					continue;
				}
			}

			if (uiInfo.joinGameTypes[ui_joinGameType.integer].gtEnum != -1) {
				game = FUNC6(FUNC0(info, "gametype"));
				if (game != uiInfo.joinGameTypes[ui_joinGameType.integer].gtEnum) {
					if (ping > 0) {
						FUNC13(lanSource, i, qfalse);
					}
					continue;
				}
			}
				
			if (ui_serverFilterType.integer > 0) {
				if (FUNC2(FUNC0(info, "game"), serverFilters[ui_serverFilterType.integer].basedir) != 0) {
					if (ping > 0) {
						FUNC13(lanSource, i, qfalse);
					}
					continue;
				}
			}
			// insert the server into the list
			FUNC3(i);
			// done with this server
			if (ping > 0) {
				FUNC13(lanSource, i, qfalse);
				uiInfo.serverStatus.numPlayersOnServers += clients;
				numinvisible++;
			}
		}
	}

	uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime;

	// if there were no servers visible for ping updates
	if (!visible) {
//		UI_StopServerRefresh();
//		uiInfo.serverStatus.nextDisplayRefresh = 0;
	}
}