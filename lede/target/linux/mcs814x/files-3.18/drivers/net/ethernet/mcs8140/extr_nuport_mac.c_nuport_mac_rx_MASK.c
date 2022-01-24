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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct nuport_mac_priv {int* irq_rxskb; size_t cur_rx; int* pkt_len; int buffer_shifting_len; struct sk_buff** rx_skb; int /*<<< orphan*/  rx_addr; TYPE_1__* pdev; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {int /*<<< orphan*/  last_rx; TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ERROR_FILTER_MASK ; 
 int MAX_ETH_FRAME_SIZE ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int /*<<< orphan*/  PACKET_MULTICAST ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  RX_ALLOC_SIZE ; 
 size_t RX_RING_SIZE ; 
 int /*<<< orphan*/  RX_SKB_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sk_buff* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct nuport_mac_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, int limit)
{
	struct nuport_mac_priv *priv = FUNC5(dev);
	struct sk_buff *skb;
	int len, status;
	int count = 0;

	while (count < limit && !priv->irq_rxskb[priv->cur_rx]) {
		skb = priv->rx_skb[priv->cur_rx];
		len = priv->pkt_len[priv->cur_rx];

		/* Remove 2 bytes added by RX buffer shifting */
		len = len - priv->buffer_shifting_len;
		skb->data = skb->data + priv->buffer_shifting_len;

		/* Get packet status */
		status = FUNC3((u32 *) (skb->data + len));

		FUNC1(&priv->pdev->dev, priv->rx_addr, skb->len,
				DMA_FROM_DEVICE);

		/* packet filter failed */
		if (!(status & (1 << 30))) {
			FUNC0(skb);
			goto exit;
		}

		/* missed frame */
		if (status & (1 << 31)) {
			dev->stats.rx_missed_errors++;
			FUNC0(skb);
			goto exit;
		}

		/* Not ethernet type */
		if ((!(status & (1 << 18))) || (status & ERROR_FILTER_MASK))
			dev->stats.rx_errors++;

		if (len > MAX_ETH_FRAME_SIZE) {
			FUNC0(skb);
			goto exit;
		} else
			FUNC7(skb, len);

		skb->protocol = FUNC2(skb, dev);
		dev->stats.rx_packets++;

		if (status & (1 << 29))
			skb->pkt_type = PACKET_OTHERHOST;
		if (status & (1 << 27))
			skb->pkt_type = PACKET_MULTICAST;
		if (status & (1 << 28))
			skb->pkt_type = PACKET_BROADCAST;

		skb->ip_summed = CHECKSUM_UNNECESSARY;

		/* Pass the received packet to network layer */
		status = FUNC6(skb);
		if (status != NET_RX_DROP)
			dev->stats.rx_bytes += len - 4;	/* Without CRC */
		else
			dev->stats.rx_dropped++;

		dev->last_rx = jiffies;

exit:
		skb = FUNC4(dev, RX_ALLOC_SIZE);
		if (!skb)
			goto out;

		FUNC8(skb, RX_SKB_HEADROOM);
		priv->rx_skb[priv->cur_rx] = skb;
		priv->irq_rxskb[priv->cur_rx] = 1;
		priv->cur_rx++;

		if (priv->cur_rx >= RX_RING_SIZE)
			priv->cur_rx = 0;
		count++;
	}
out:
	return count;
}