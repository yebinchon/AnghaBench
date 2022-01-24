#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rtable {int dummy; } ;
struct rt6_info {int dummy; } ;
struct net_device {scalar_t__ addr_len; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; struct net_device* dev; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_5__ {scalar_t__ ip6; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ sfe_ip_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int FUNC1 (struct rtable*) ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct neighbour* FUNC3 (struct dst_entry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct rt6_info* FUNC10 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static bool FUNC12(sfe_ip_addr_t *addr, struct net_device **dev, u8 *mac_addr, bool is_v4)
{
	struct neighbour *neigh;
	struct rtable *rt;
	struct rt6_info *rt6;
	struct dst_entry *dst;
	struct net_device *mac_dev;

	/*
	 * Look up the rtable entry for the IP address then get the hardware
	 * address from its neighbour structure.  This means this works when the
	 * neighbours are routers too.
	 */
	if (is_v4) {
		rt = FUNC5(&init_net, addr->ip, 0, 0, 0);
		if (FUNC11(FUNC1(rt))) {
			goto ret_fail;
		}

		dst = (struct dst_entry *)rt;
	} else {
		rt6 = FUNC10(&init_net, (struct in6_addr *)addr->ip6, 0, 0, 0);
		if (!rt6) {
			goto ret_fail;
		}

		dst = (struct dst_entry *)rt6;
	}

	FUNC8();
	neigh = FUNC3(dst, addr);
	if (FUNC11(!neigh)) {
		FUNC9();
		FUNC4(dst);
		goto ret_fail;
	}

	if (FUNC11(!(neigh->nud_state & NUD_VALID))) {
		FUNC9();
		FUNC7(neigh);
		FUNC4(dst);
		goto ret_fail;
	}

	mac_dev = neigh->dev;
	if (!mac_dev) {
		FUNC9();
		FUNC7(neigh);
		FUNC4(dst);
		goto ret_fail;
	}

	FUNC6(mac_addr, neigh->ha, (size_t)mac_dev->addr_len);

	FUNC2(mac_dev);
	*dev = mac_dev;
	FUNC9();
	FUNC7(neigh);
	FUNC4(dst);

	return true;

ret_fail:
	FUNC0("failed to find MAC address for IP: %pIS\n", addr);

	return false;
}