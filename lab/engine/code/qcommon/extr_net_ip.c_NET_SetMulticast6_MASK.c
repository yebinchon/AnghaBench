#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_8__ {scalar_t__ ipv6mr_interface; int /*<<< orphan*/  ipv6mr_multiaddr; } ;
struct TYPE_7__ {int integer; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * string; } ;
struct TYPE_5__ {scalar_t__* string; scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int NET_DISABLEMCAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__ curgroup ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* net_enabled ; 
 TYPE_2__* net_mcast6addr ; 
 TYPE_1__* net_mcast6iface ; 

void FUNC5(void)
{
	struct sockaddr_in6 addr;

	if(!*net_mcast6addr->string || !FUNC2(net_mcast6addr->string, (struct sockaddr *) &addr, sizeof(addr), AF_INET6))
	{
		FUNC0("WARNING: NET_JoinMulticast6: Incorrect multicast address given, "
			   "please set cvar %s to a sane value.\n", net_mcast6addr->name);
		
		FUNC1(net_enabled->name, net_enabled->integer | NET_DISABLEMCAST);
		
		return;
	}
	
	FUNC4(&curgroup.ipv6mr_multiaddr, &addr.sin6_addr, sizeof(curgroup.ipv6mr_multiaddr));

	if(*net_mcast6iface->string)
	{
#ifdef _WIN32
		curgroup.ipv6mr_interface = net_mcast6iface->integer;
#else
		curgroup.ipv6mr_interface = FUNC3(net_mcast6iface->string);
#endif
	}
	else
		curgroup.ipv6mr_interface = 0;
}