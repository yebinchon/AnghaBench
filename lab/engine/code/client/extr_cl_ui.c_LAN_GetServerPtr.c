
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int serverInfo_t ;
struct TYPE_2__ {int * favoriteServers; int * globalServers; int * localServers; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 TYPE_1__ cls ;

__attribute__((used)) static serverInfo_t *LAN_GetServerPtr( int source, int n ) {
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return &cls.localServers[n];
   }
   break;
  case 128:
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    return &cls.globalServers[n];
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return &cls.favoriteServers[n];
   }
   break;
 }
 return ((void*)0);
}
