
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* visible; } ;
typedef TYPE_1__ serverInfo_t ;
typedef void* qboolean ;
struct TYPE_4__ {TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* localServers; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 TYPE_2__ cls ;

__attribute__((used)) static void LAN_MarkServerVisible(int source, int n, qboolean visible ) {
 if (n == -1) {
  int count = MAX_OTHER_SERVERS;
  serverInfo_t *server = ((void*)0);
  switch (source) {
   case 129 :
    server = &cls.localServers[0];
    break;
   case 128:
   case 130 :
    server = &cls.globalServers[0];
    count = MAX_GLOBAL_SERVERS;
    break;
   case 131 :
    server = &cls.favoriteServers[0];
    break;
  }
  if (server) {
   for (n = 0; n < count; n++) {
    server[n].visible = visible;
   }
  }

 } else {
  switch (source) {
   case 129 :
    if (n >= 0 && n < MAX_OTHER_SERVERS) {
     cls.localServers[n].visible = visible;
    }
    break;
   case 128:
   case 130 :
    if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
     cls.globalServers[n].visible = visible;
    }
    break;
   case 131 :
    if (n >= 0 && n < MAX_OTHER_SERVERS) {
     cls.favoriteServers[n].visible = visible;
    }
    break;
  }
 }
}
