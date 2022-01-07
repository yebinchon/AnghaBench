
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* favoriteServers; TYPE_2__* globalServers; TYPE_1__* localServers; } ;
struct TYPE_7__ {int visible; } ;
struct TYPE_6__ {int visible; } ;
struct TYPE_5__ {int visible; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 TYPE_4__ cls ;
 int qfalse ;

__attribute__((used)) static int LAN_ServerIsVisible(int source, int n ) {
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return cls.localServers[n].visible;
   }
   break;
  case 128:
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    return cls.globalServers[n].visible;
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return cls.favoriteServers[n].visible;
   }
   break;
 }
 return qfalse;
}
