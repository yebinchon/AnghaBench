
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* hostName; char* mapName; int ping; char* game; scalar_t__ g_needpass; scalar_t__ g_humanplayers; scalar_t__ punkbuster; scalar_t__ netType; scalar_t__ gameType; scalar_t__ minPing; scalar_t__ maxPing; scalar_t__ maxClients; scalar_t__ clients; int adr; } ;
typedef TYPE_1__ serverInfo_t ;
typedef int netadr_t ;



void CL_InitServerInfo( serverInfo_t *server, netadr_t *address ) {
 server->adr = *address;
 server->clients = 0;
 server->hostName[0] = '\0';
 server->mapName[0] = '\0';
 server->maxClients = 0;
 server->maxPing = 0;
 server->minPing = 0;
 server->ping = -1;
 server->game[0] = '\0';
 server->gameType = 0;
 server->netType = 0;
 server->punkbuster = 0;
 server->g_humanplayers = 0;
 server->g_needpass = 0;
}
