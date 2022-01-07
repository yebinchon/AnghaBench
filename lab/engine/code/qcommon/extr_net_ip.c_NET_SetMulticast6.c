
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
struct TYPE_8__ {scalar_t__ ipv6mr_interface; int ipv6mr_multiaddr; } ;
struct TYPE_7__ {int integer; int name; } ;
struct TYPE_6__ {int name; int * string; } ;
struct TYPE_5__ {scalar_t__* string; scalar_t__ integer; } ;


 int AF_INET6 ;
 int Com_Printf (char*,int ) ;
 int Cvar_SetValue (int ,int) ;
 int NET_DISABLEMCAST ;
 int Sys_StringToSockaddr (int *,struct sockaddr*,int,int ) ;
 TYPE_4__ curgroup ;
 scalar_t__ if_nametoindex (scalar_t__*) ;
 int memcpy (int *,int *,int) ;
 TYPE_3__* net_enabled ;
 TYPE_2__* net_mcast6addr ;
 TYPE_1__* net_mcast6iface ;

void NET_SetMulticast6(void)
{
 struct sockaddr_in6 addr;

 if(!*net_mcast6addr->string || !Sys_StringToSockaddr(net_mcast6addr->string, (struct sockaddr *) &addr, sizeof(addr), AF_INET6))
 {
  Com_Printf("WARNING: NET_JoinMulticast6: Incorrect multicast address given, "
      "please set cvar %s to a sane value.\n", net_mcast6addr->name);

  Cvar_SetValue(net_enabled->name, net_enabled->integer | NET_DISABLEMCAST);

  return;
 }

 memcpy(&curgroup.ipv6mr_multiaddr, &addr.sin6_addr, sizeof(curgroup.ipv6mr_multiaddr));

 if(*net_mcast6iface->string)
 {



  curgroup.ipv6mr_interface = if_nametoindex(net_mcast6iface->string);

 }
 else
  curgroup.ipv6mr_interface = 0;
}
