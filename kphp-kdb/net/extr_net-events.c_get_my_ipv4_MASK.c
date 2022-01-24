#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct ifaddrs {char* ifa_name; scalar_t__ ifa_netmask; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_3__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddrs*) ; 
 scalar_t__ FUNC2 (struct ifaddrs**) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,char*) ; 

unsigned FUNC7 (void) {
  struct ifaddrs *ifa_first, *ifa;
  unsigned my_ip = 0, my_netmask = -1; 
  char *my_iface = 0;
  if (FUNC2 (&ifa_first) < 0) {
    FUNC4 ("getifaddrs()");
    return 0;
  }
  for (ifa = ifa_first; ifa; ifa = ifa->ifa_next) {
    if (ifa->ifa_addr->sa_family != AF_INET) {
      continue;
    }
    if (!FUNC5 (ifa->ifa_name, "lo", 2)) {
      continue;
    }
    unsigned ip = FUNC3 (((struct sockaddr_in *) ifa->ifa_addr)->sin_addr.s_addr);
    unsigned mask = FUNC3 (((struct sockaddr_in *) ifa->ifa_netmask)->sin_addr.s_addr);
    // fprintf (stderr, "%08x %08x\t%s\n", ip, mask, ifa->ifa_name);
    if ((ip & (-1 << 24)) == (10 << 24) && mask < my_netmask) {
      my_ip = ip;
      my_netmask = mask;
      my_iface = ifa->ifa_name;
    }
  }
  FUNC6 (1, "using main IP %d.%d.%d.%d/%d at interface %s\n", (my_ip >> 24), (my_ip >> 16) & 255, (my_ip >> 8) & 255, my_ip & 255,
	    FUNC0 (~my_netmask), my_iface ?: "(none)"); 
  FUNC1 (ifa_first);
  return my_ip;
}