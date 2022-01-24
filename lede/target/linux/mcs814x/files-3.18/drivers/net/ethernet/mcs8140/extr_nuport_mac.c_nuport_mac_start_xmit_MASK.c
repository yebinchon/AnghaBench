#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct nuport_mac_priv {size_t cur_tx; int* valid_txskb; int tx_full; int /*<<< orphan*/  lock; struct sk_buff** tx_skb; scalar_t__ first_pkt; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ stats; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 size_t TX_RING_SIZE ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct nuport_mac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct nuport_mac_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	unsigned long flags;
	struct nuport_mac_priv *priv = FUNC1(dev);
	int ret;

	if (FUNC3(dev)) {
		FUNC2(dev, "netif queue was stopped, restarting\n");
		FUNC4(dev);
	}

	FUNC7(&priv->lock, flags);
	if (priv->first_pkt) {
		ret = FUNC6(priv, skb);
		if (ret) {
			FUNC5(dev);
			FUNC8(&priv->lock, flags);
			FUNC0(dev, "transmit path busy\n");
			return NETDEV_TX_BUSY;
		}
		priv->first_pkt = 0;
	}

	priv->tx_skb[priv->cur_tx] = skb;
	dev->stats.tx_bytes += skb->len;
	dev->stats.tx_packets++;
	priv->valid_txskb[priv->cur_tx] = 1;
	priv->cur_tx++;
	dev->trans_start = jiffies;

	if (priv->cur_tx >= TX_RING_SIZE)
		priv->cur_tx = 0;

	FUNC8(&priv->lock, flags);

	if (priv->valid_txskb[priv->cur_tx]) {
		priv->tx_full = 1;
		FUNC0(dev, "stopping queue\n");
		FUNC5(dev);
	}

	return NETDEV_TX_OK;
}