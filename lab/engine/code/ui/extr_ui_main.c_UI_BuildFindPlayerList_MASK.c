#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int numLines; char*** lines; } ;
typedef  TYPE_4__ serverStatusInfo_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  infoString ;
struct TYPE_15__ {size_t num; TYPE_1__* server; } ;
struct TYPE_10__ {int realTime; } ;
struct TYPE_11__ {size_t numDisplayServers; int /*<<< orphan*/ * displayServers; } ;
struct TYPE_14__ {int nextFindPlayerRefresh; int numFoundPlayerServers; char* findPlayerName; char** foundPlayerServerNames; char** foundPlayerServerAddresses; scalar_t__ currentFoundPlayerServer; TYPE_2__ uiDC; TYPE_7__ pendingServerStatus; TYPE_3__ serverStatus; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_9__ {char* adrstr; char* name; int startTime; void* valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FEEDER_FINDPLAYER ; 
 char* FUNC1 (char*,char*) ; 
 int MAX_FOUNDPLAYER_SERVERS ; 
 int /*<<< orphan*/  MAX_NAME_LENGTH ; 
 int MAX_SERVERSTATUSREQUESTS ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,TYPE_4__*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 void* qfalse ; 
 void* qtrue ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__ uiInfo ; 
 TYPE_5__ ui_serverStatusTimeOut ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

__attribute__((used)) static void FUNC16(qboolean force) {
	static int numFound, numTimeOuts;
	int i, j, resend;
	serverStatusInfo_t info;
	char name[MAX_NAME_LENGTH+2];
	char infoString[MAX_STRING_CHARS];
	int  lanSource;

	if (!force) {
		if (!uiInfo.nextFindPlayerRefresh || uiInfo.nextFindPlayerRefresh > uiInfo.uiDC.realTime) {
			return;
		}
	}
	else {
		FUNC7(&uiInfo.pendingServerStatus, 0, sizeof(uiInfo.pendingServerStatus));
		uiInfo.numFoundPlayerServers = 0;
		uiInfo.currentFoundPlayerServer = 0;
		FUNC11( "ui_findPlayer", uiInfo.findPlayerName, sizeof(uiInfo.findPlayerName));
		FUNC2(uiInfo.findPlayerName);
		// should have a string of some length
		if (!FUNC9(uiInfo.findPlayerName)) {
			uiInfo.nextFindPlayerRefresh = 0;
			return;
		}
		// set resend time
		resend = ui_serverStatusTimeOut.integer / 2 - 10;
		if (resend < 50) {
			resend = 50;
		}
		FUNC10("cl_serverStatusResendTime", FUNC15("%d", resend));
		// reset all server status requests
		FUNC14( NULL, NULL, 0);
		//
		uiInfo.numFoundPlayerServers = 1;
		FUNC0(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
						sizeof(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1]),
							"searching %d...", uiInfo.pendingServerStatus.num);
		numFound = 0;
		numTimeOuts++;
	}
	for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
		// if this pending server is valid
		if (uiInfo.pendingServerStatus.server[i].valid) {
			// try to get the server status for this server
			if (FUNC5( uiInfo.pendingServerStatus.server[i].adrstr, &info ) ) {
				//
				numFound++;
				// parse through the server status lines
				for (j = 0; j < info.numLines; j++) {
					// should have ping info
					if ( !info.lines[j][2] || !info.lines[j][2][0] ) {
						continue;
					}
					// clean string first
					FUNC3(name, info.lines[j][3], sizeof(name));
					FUNC2(name);
					// if the player name is a substring
					if (FUNC8(name, uiInfo.findPlayerName)) {
						// add to found server list if we have space (always leave space for a line with the number found)
						if (uiInfo.numFoundPlayerServers < MAX_FOUNDPLAYER_SERVERS-1) {
							//
							FUNC3(uiInfo.foundPlayerServerAddresses[uiInfo.numFoundPlayerServers-1],
										uiInfo.pendingServerStatus.server[i].adrstr,
											sizeof(uiInfo.foundPlayerServerAddresses[0]));
							FUNC3(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
										uiInfo.pendingServerStatus.server[i].name,
											sizeof(uiInfo.foundPlayerServerNames[0]));
							uiInfo.numFoundPlayerServers++;
						}
						else {
							// can't add any more so we're done
							uiInfo.pendingServerStatus.num = uiInfo.serverStatus.numDisplayServers;
						}
					}
				}
				FUNC0(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
								sizeof(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1]),
									"searching %d/%d...", uiInfo.pendingServerStatus.num, numFound);
				// retrieved the server status so reuse this spot
				uiInfo.pendingServerStatus.server[i].valid = qfalse;
			}
		}
		// if empty pending slot or timed out
		if (!uiInfo.pendingServerStatus.server[i].valid ||
			uiInfo.pendingServerStatus.server[i].startTime < uiInfo.uiDC.realTime - ui_serverStatusTimeOut.integer) {
			if (uiInfo.pendingServerStatus.server[i].valid) {
				numTimeOuts++;
			}
			// reset server status request for this address
			FUNC5( uiInfo.pendingServerStatus.server[i].adrstr, NULL );
			// reuse pending slot
			uiInfo.pendingServerStatus.server[i].valid = qfalse;
			// if we didn't try to get the status of all servers in the main browser yet
			if (uiInfo.pendingServerStatus.num < uiInfo.serverStatus.numDisplayServers) {
				uiInfo.pendingServerStatus.server[i].startTime = uiInfo.uiDC.realTime;
				lanSource = FUNC6();
				FUNC12(lanSource, uiInfo.serverStatus.displayServers[uiInfo.pendingServerStatus.num],
							uiInfo.pendingServerStatus.server[i].adrstr, sizeof(uiInfo.pendingServerStatus.server[i].adrstr));
				FUNC13(lanSource, uiInfo.serverStatus.displayServers[uiInfo.pendingServerStatus.num], infoString, sizeof(infoString));
				FUNC3(uiInfo.pendingServerStatus.server[i].name, FUNC1(infoString, "hostname"), sizeof(uiInfo.pendingServerStatus.server[0].name));
				uiInfo.pendingServerStatus.server[i].valid = qtrue;
				uiInfo.pendingServerStatus.num++;
				FUNC0(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
								sizeof(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1]),
									"searching %d/%d...", uiInfo.pendingServerStatus.num, numFound);
			}
		}
	}
	for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
		if (uiInfo.pendingServerStatus.server[i].valid) {
			break;
		}
	}
	// if still trying to retrieve server status info
	if (i < MAX_SERVERSTATUSREQUESTS) {
		uiInfo.nextFindPlayerRefresh = uiInfo.uiDC.realTime + 25;
	}
	else {
		// add a line that shows the number of servers found
		if (!uiInfo.numFoundPlayerServers) {
			FUNC0(uiInfo.foundPlayerServerNames[0], sizeof(uiInfo.foundPlayerServerNames[0]), "no servers found");
		}
		else {
			FUNC0(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1], sizeof(uiInfo.foundPlayerServerNames[0]),
						"%d server%s found with player %s", uiInfo.numFoundPlayerServers-1,
						uiInfo.numFoundPlayerServers == 2 ? "":"s", uiInfo.findPlayerName);
		}
		uiInfo.nextFindPlayerRefresh = 0;
		// show the server status info for the selected server
		FUNC4(FEEDER_FINDPLAYER, uiInfo.currentFoundPlayerServer);
	}
}