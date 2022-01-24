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
struct sk_buff {int len; } ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct fe_tx_ring {int dummy; } ;
struct fe_priv {struct fe_tx_ring tx_ring; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct fe_tx_ring*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct fe_priv*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct net_device*,int,struct fe_tx_ring*) ; 
 struct fe_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct fe_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct fe_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  tx_queued ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct fe_priv *priv = FUNC4(dev);
	struct fe_tx_ring *ring = &priv->tx_ring;
	struct net_device_stats *stats = &dev->stats;
	int tx_num;
	int len = skb->len;

	if (FUNC2(skb, priv)) {
		FUNC7(priv, tx_err, dev, "tx padding failed!\n");
		return NETDEV_TX_OK;
	}

	tx_num = FUNC0(skb);
	if (FUNC8(FUNC1(ring) <= tx_num)) {
		FUNC6(dev);
		FUNC5(priv, tx_queued, dev,
			  "Tx Ring full when queue awake!\n");
		return NETDEV_TX_BUSY;
	}

	if (FUNC3(skb, dev, tx_num, ring) < 0) {
		stats->tx_dropped++;
	} else {
		stats->tx_packets++;
		stats->tx_bytes += len;
	}

	return NETDEV_TX_OK;
}