#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ifreq {int ifr_flags; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  capture_sock ; 
 int /*<<< orphan*/  ifname ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(int on)
{
	struct ifreq ifr;

	FUNC1(ifr.ifr_name, ifname, IFNAMSIZ);

	if (FUNC0(capture_sock, SIOCGIFFLAGS, &ifr) < 0)
		return -1;

	if (on && !(ifr.ifr_flags & IFF_PROMISC))
	{
		ifr.ifr_flags |= IFF_PROMISC;

		if (FUNC0(capture_sock, SIOCSIFFLAGS, &ifr))
			return -1;

		return 1;
	}
	else if (!on && (ifr.ifr_flags & IFF_PROMISC))
	{
		ifr.ifr_flags &= ~IFF_PROMISC;

		if (FUNC0(capture_sock, SIOCSIFFLAGS, &ifr))
			return -1;

		return 1;
	}

	return 0;
}