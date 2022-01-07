
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef scalar_t__ sa_family_t ;
struct TYPE_2__ {int netmask; int addr; scalar_t__ family; int ifname; int type; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 size_t MAX_IPS ;
 int NA_IP ;
 int NA_IP6 ;
 int Q_strncpyz (int ,char*,int) ;
 TYPE_1__* localIP ;
 int memcpy (int *,struct sockaddr*,int) ;
 size_t numIP ;

__attribute__((used)) static void NET_AddLocalAddress(char *ifname, struct sockaddr *addr, struct sockaddr *netmask)
{
 int addrlen;
 sa_family_t family;


 if(!addr || !netmask || !ifname)
  return;

 family = addr->sa_family;

 if(numIP < MAX_IPS)
 {
  if(family == AF_INET)
  {
   addrlen = sizeof(struct sockaddr_in);
   localIP[numIP].type = NA_IP;
  }
  else if(family == AF_INET6)
  {
   addrlen = sizeof(struct sockaddr_in6);
   localIP[numIP].type = NA_IP6;
  }
  else
   return;

  Q_strncpyz(localIP[numIP].ifname, ifname, sizeof(localIP[numIP].ifname));

  localIP[numIP].family = family;

  memcpy(&localIP[numIP].addr, addr, addrlen);
  memcpy(&localIP[numIP].netmask, netmask, addrlen);

  numIP++;
 }
}
