
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int addrbuf ;
struct TYPE_2__ {scalar_t__ type; int addr; } ;


 int Com_Printf (char*,char*) ;
 scalar_t__ NA_IP ;
 scalar_t__ NA_IP6 ;
 int NET_ADDRSTRMAXLEN ;
 int Sys_SockaddrToString (char*,int,struct sockaddr*) ;
 TYPE_1__* localIP ;
 int numIP ;

void Sys_ShowIP(void) {
 int i;
 char addrbuf[NET_ADDRSTRMAXLEN];

 for(i = 0; i < numIP; i++)
 {
  Sys_SockaddrToString(addrbuf, sizeof(addrbuf), (struct sockaddr *) &localIP[i].addr);

  if(localIP[i].type == NA_IP)
   Com_Printf( "IP: %s\n", addrbuf);
  else if(localIP[i].type == NA_IP6)
   Com_Printf( "IP6: %s\n", addrbuf);
 }
}
