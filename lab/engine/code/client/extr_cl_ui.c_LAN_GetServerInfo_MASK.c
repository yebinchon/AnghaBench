#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  g_humanplayers; int /*<<< orphan*/  g_needpass; int /*<<< orphan*/  punkbuster; int /*<<< orphan*/  adr; int /*<<< orphan*/  netType; int /*<<< orphan*/  gameType; int /*<<< orphan*/  game; int /*<<< orphan*/  maxPing; int /*<<< orphan*/  minPing; int /*<<< orphan*/  ping; int /*<<< orphan*/  maxClients; int /*<<< orphan*/  clients; int /*<<< orphan*/  mapName; int /*<<< orphan*/  hostName; } ;
typedef  TYPE_1__ serverInfo_t ;
struct TYPE_4__ {TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* localServers; } ;

/* Variables and functions */
#define  AS_FAVORITES 131 
#define  AS_GLOBAL 130 
#define  AS_LOCAL 129 
#define  AS_MPLAYER 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int MAX_GLOBAL_SERVERS ; 
 int MAX_OTHER_SERVERS ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_2__ cls ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( int source, int n, char *buf, int buflen ) {
	char info[MAX_STRING_CHARS];
	serverInfo_t *server = NULL;
	info[0] = '\0';
	switch (source) {
		case AS_LOCAL :
			if (n >= 0 && n < MAX_OTHER_SERVERS) {
				server = &cls.localServers[n];
			}
			break;
		case AS_MPLAYER:
		case AS_GLOBAL :
			if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
				server = &cls.globalServers[n];
			}
			break;
		case AS_FAVORITES :
			if (n >= 0 && n < MAX_OTHER_SERVERS) {
				server = &cls.favoriteServers[n];
			}
			break;
	}
	if (server && buf) {
		buf[0] = '\0';
		FUNC0( info, "hostname", server->hostName);
		FUNC0( info, "mapname", server->mapName);
		FUNC0( info, "clients", FUNC3("%i",server->clients));
		FUNC0( info, "sv_maxclients", FUNC3("%i",server->maxClients));
		FUNC0( info, "ping", FUNC3("%i",server->ping));
		FUNC0( info, "minping", FUNC3("%i",server->minPing));
		FUNC0( info, "maxping", FUNC3("%i",server->maxPing));
		FUNC0( info, "game", server->game);
		FUNC0( info, "gametype", FUNC3("%i",server->gameType));
		FUNC0( info, "nettype", FUNC3("%i",server->netType));
		FUNC0( info, "addr", FUNC1(server->adr));
		FUNC0( info, "punkbuster", FUNC3("%i", server->punkbuster));
		FUNC0( info, "g_needpass", FUNC3("%i", server->g_needpass));
		FUNC0( info, "g_humanplayers", FUNC3("%i", server->g_humanplayers));
		FUNC2(buf, info, buflen);
	} else {
		if (buf) {
			buf[0] = '\0';
		}
	}
}