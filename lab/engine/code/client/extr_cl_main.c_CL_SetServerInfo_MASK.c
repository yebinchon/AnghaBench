#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ping; void* g_needpass; void* g_humanplayers; void* punkbuster; void* maxPing; void* minPing; void* netType; void* gameType; int /*<<< orphan*/  game; void* maxClients; int /*<<< orphan*/  mapName; int /*<<< orphan*/  hostName; void* clients; } ;
typedef  TYPE_1__ serverInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(serverInfo_t *server, const char *info, int ping) {
	if (server) {
		if (info) {
			server->clients = FUNC2(FUNC0(info, "clients"));
			FUNC1(server->hostName,FUNC0(info, "hostname"), MAX_NAME_LENGTH);
			FUNC1(server->mapName, FUNC0(info, "mapname"), MAX_NAME_LENGTH);
			server->maxClients = FUNC2(FUNC0(info, "sv_maxclients"));
			FUNC1(server->game,FUNC0(info, "game"), MAX_NAME_LENGTH);
			server->gameType = FUNC2(FUNC0(info, "gametype"));
			server->netType = FUNC2(FUNC0(info, "nettype"));
			server->minPing = FUNC2(FUNC0(info, "minping"));
			server->maxPing = FUNC2(FUNC0(info, "maxping"));
			server->punkbuster = FUNC2(FUNC0(info, "punkbuster"));
			server->g_humanplayers = FUNC2(FUNC0(info, "g_humanplayers"));
			server->g_needpass = FUNC2(FUNC0(info, "g_needpass"));
		}
		server->ping = ping;
	}
}