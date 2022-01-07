
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* favoriteServers; TYPE_1__* globalServers; TYPE_3__* localServers; } ;
struct TYPE_7__ {int adr; } ;
struct TYPE_6__ {int adr; } ;
struct TYPE_5__ {int adr; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 int NET_AdrToStringwPort (int ) ;
 int Q_strncpyz (char*,int ,int) ;
 TYPE_4__ cls ;

__attribute__((used)) static void LAN_GetServerAddressString( int source, int n, char *buf, int buflen ) {
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    Q_strncpyz(buf, NET_AdrToStringwPort( cls.localServers[n].adr) , buflen );
    return;
   }
   break;
  case 128:
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    Q_strncpyz(buf, NET_AdrToStringwPort( cls.globalServers[n].adr) , buflen );
    return;
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    Q_strncpyz(buf, NET_AdrToStringwPort( cls.favoriteServers[n].adr) , buflen );
    return;
   }
   break;
 }
 buf[0] = '\0';
}
