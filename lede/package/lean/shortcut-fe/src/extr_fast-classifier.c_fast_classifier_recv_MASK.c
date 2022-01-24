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
struct sk_buff {int tc_verd; scalar_t__ protocol; struct net_device* dev; scalar_t__ data; } ;
struct net_device {int priv_flags; int /*<<< orphan*/  name; scalar_t__ ip6_ptr; scalar_t__ ip_ptr; scalar_t__ ingress_queue; } ;
struct inet6_dev {int /*<<< orphan*/  addr_list; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int IFF_BRIDGE_PORT ; 
 int TC_NCLS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct net_device* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*,struct sk_buff*) ; 
 int FUNC10 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ skip_to_bridge_ingress ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb)
{
	struct net_device *dev;
	struct net_device *master_dev = NULL;
	int ret = 0;

	/*
	 * We know that for the vast majority of packets we need the transport
	 * layer header so we may as well start to fetch it now!
	 */
	FUNC7(skb->data + 32);
	FUNC2();

	dev = skb->dev;

	/*
	 * Process packet like it arrived on the bridge device
	 */
	if (skip_to_bridge_ingress &&
	    (dev->priv_flags & IFF_BRIDGE_PORT)) {
		master_dev = FUNC8(dev);
		if (!master_dev) {
			FUNC1("master dev is NULL %s\n");
			goto rx_exit;
		}
		dev = master_dev;
	}

#ifdef CONFIG_NET_CLS_ACT
	/*
	 * If ingress Qdisc configured, and packet not processed by ingress Qdisc yet
	 * We cannot accelerate this packet.
	 */
	if (dev->ingress_queue && !(skb->tc_verd & TC_NCLS)) {
		goto rx_exit;
	}
#endif

	/*
	 * We're only interested in IPv4 and IPv6 packets.
	 */
	if (FUNC5(FUNC4(ETH_P_IP) == skb->protocol)) {
		struct in_device *in_dev;

		/*
		 * Does our input device support IP processing?
		 */
		in_dev = (struct in_device *)dev->ip_ptr;
		if (FUNC11(!in_dev)) {
			FUNC0("no IP processing for device: %s\n", dev->name);
			goto rx_exit;
		}

		/*
		 * Does it have an IP address?  If it doesn't then we can't do anything
		 * interesting here!
		 */
		if (FUNC11(!in_dev->ifa_list)) {
			FUNC0("no IP address for device: %s\n", dev->name);
			goto rx_exit;
		}

		ret = FUNC9(dev, skb);

	} else if (FUNC5(FUNC4(ETH_P_IPV6) == skb->protocol)) {
		struct inet6_dev *in_dev;

		/*
		 * Does our input device support IPv6 processing?
		 */
		in_dev = (struct inet6_dev *)dev->ip6_ptr;
		if (FUNC11(!in_dev)) {
			FUNC0("no IPv6 processing for device: %s\n", dev->name);
			goto rx_exit;
		}

		/*
		 * Does it have an IPv6 address?  If it doesn't then we can't do anything
		 * interesting here!
		 */
		if (FUNC11(FUNC6(&in_dev->addr_list))) {
			FUNC0("no IPv6 address for device: %s\n", dev->name);
			goto rx_exit;
		}

		ret = FUNC10(dev, skb);

	} else {
		FUNC0("not IP packet\n");
	}

rx_exit:
	if (master_dev) {
		FUNC3(master_dev);
	}

	return ret;
}