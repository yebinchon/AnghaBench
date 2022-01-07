
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_4__ {int adr; } ;
struct TYPE_3__ {TYPE_2__* favoriteServers; TYPE_2__* globalServers; TYPE_2__* localServers; } ;


 int CL_SetServerInfo (TYPE_2__*,char const*,int) ;
 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 scalar_t__ NET_CompareAdr (int ,int ) ;
 TYPE_1__ cls ;

__attribute__((used)) static void CL_SetServerInfoByAddress(netadr_t from, const char *info, int ping) {
 int i;

 for (i = 0; i < MAX_OTHER_SERVERS; i++) {
  if (NET_CompareAdr(from, cls.localServers[i].adr)) {
   CL_SetServerInfo(&cls.localServers[i], info, ping);
  }
 }

 for (i = 0; i < MAX_GLOBAL_SERVERS; i++) {
  if (NET_CompareAdr(from, cls.globalServers[i].adr)) {
   CL_SetServerInfo(&cls.globalServers[i], info, ping);
  }
 }

 for (i = 0; i < MAX_OTHER_SERVERS; i++) {
  if (NET_CompareAdr(from, cls.favoriteServers[i].adr)) {
   CL_SetServerInfo(&cls.favoriteServers[i], info, ping);
  }
 }

}
