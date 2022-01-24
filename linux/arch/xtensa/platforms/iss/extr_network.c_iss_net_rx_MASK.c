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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {scalar_t__ mtu; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_3__ {scalar_t__ (* poll ) (struct iss_net_private*) ;int (* read ) (struct iss_net_private*,struct sk_buff**) ;int /*<<< orphan*/  (* protocol ) (struct sk_buff*) ;} ;
struct iss_net_private {TYPE_2__ stats; TYPE_1__ tp; } ;

/* Variables and functions */
 scalar_t__ ETH_HEADER_OTHER ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct iss_net_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (struct iss_net_private*) ; 
 int FUNC9 (struct iss_net_private*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct iss_net_private *lp = FUNC2(dev);
	int pkt_len;
	struct sk_buff *skb;

	/* Check if there is any new data. */

	if (lp->tp.poll(lp) == 0)
		return 0;

	/* Try to allocate memory, if it fails, try again next round. */

	skb = FUNC0(dev->mtu + 2 + ETH_HEADER_OTHER);
	if (skb == NULL) {
		lp->stats.rx_dropped++;
		return 0;
	}

	FUNC5(skb, 2);

	/* Setup skb */

	skb->dev = dev;
	FUNC6(skb);
	pkt_len = lp->tp.read(lp, &skb);
	FUNC4(skb, pkt_len);

	if (pkt_len > 0) {
		FUNC7(skb, pkt_len);
		skb->protocol = lp->tp.protocol(skb);

		lp->stats.rx_bytes += skb->len;
		lp->stats.rx_packets++;
		FUNC3(skb);
		return pkt_len;
	}
	FUNC1(skb);
	return pkt_len;
}