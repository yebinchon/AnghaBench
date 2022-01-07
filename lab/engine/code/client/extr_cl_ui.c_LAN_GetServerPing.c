
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ping; } ;
typedef TYPE_1__ serverInfo_t ;
struct TYPE_4__ {TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* localServers; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 TYPE_2__ cls ;

__attribute__((used)) static int LAN_GetServerPing( int source, int n ) {
 serverInfo_t *server = ((void*)0);
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    server = &cls.localServers[n];
   }
   break;
  case 128:
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    server = &cls.globalServers[n];
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    server = &cls.favoriteServers[n];
   }
   break;
 }
 if (server) {
  return server->ping;
 }
 return -1;
}
