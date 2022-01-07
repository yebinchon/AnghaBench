
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int ifa_flags; int ifa_netmask; int ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;


 int Com_Printf (char*,int ) ;
 int IFF_UP ;
 int NET_AddLocalAddress (int ,int ,int ) ;
 int NET_ErrorString () ;
 int Sys_ShowIP () ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 scalar_t__ numIP ;

__attribute__((used)) static void NET_GetLocalAddress(void)
{
 struct ifaddrs *ifap, *search;

 numIP = 0;

 if(getifaddrs(&ifap))
  Com_Printf("NET_GetLocalAddress: Unable to get list of network interfaces: %s\n", NET_ErrorString());
 else
 {
  for(search = ifap; search; search = search->ifa_next)
  {

   if(ifap->ifa_flags & IFF_UP)
    NET_AddLocalAddress(search->ifa_name, search->ifa_addr, search->ifa_netmask);
  }

  freeifaddrs(ifap);

  Sys_ShowIP();
 }
}
