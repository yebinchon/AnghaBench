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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  last_rx; } ;
struct dma_desc {int buf1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int DESC_OWN ; 
 scalar_t__ ETH_CSUM_LEN ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 struct net_device** adm5120_port ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int cur_rxl ; 
 int FUNC2 (struct dma_desc*) ; 
 unsigned int FUNC3 (struct dma_desc*) ; 
 scalar_t__ FUNC4 (struct dma_desc*) ; 
 int dirty_rxl ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct dma_desc* rxl_descs ; 
 struct sk_buff** rxl_skbuff ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC11(int limit)
{
	unsigned int done = 0;

	FUNC0("rx start, limit=%d, cur_rxl=%u, dirty_rxl=%u\n",
				limit, cur_rxl, dirty_rxl);

	while (done < limit) {
		int entry = cur_rxl % RX_RING_SIZE;
		struct dma_desc *desc = &rxl_descs[entry];
		struct net_device *rdev;
		unsigned int port;

		if (desc->buf1 & DESC_OWN)
			break;

		if (dirty_rxl + RX_RING_SIZE == cur_rxl)
			break;

		port = FUNC3(desc);
		rdev = adm5120_port[port];

		FUNC0("rx descriptor %u, desc=%p, skb=%p\n", entry, desc,
				rxl_skbuff[entry]);

		if ((rdev) && FUNC8(rdev)) {
			struct sk_buff *skb = rxl_skbuff[entry];
			int pktlen;

			pktlen = FUNC2(desc);
			pktlen -= ETH_CSUM_LEN;

			if ((pktlen == 0) || FUNC4(desc)) {
				rdev->stats.rx_errors++;
				if (pktlen == 0)
					rdev->stats.rx_length_errors++;
				if (FUNC4(desc))
					rdev->stats.rx_crc_errors++;
				FUNC0("rx error, recycling skb %u\n", entry);
			} else {
				FUNC10(skb, pktlen);

				skb->dev = rdev;
				skb->protocol = FUNC6(skb, rdev);
				skb->ip_summed = CHECKSUM_UNNECESSARY;

				FUNC5((unsigned long)skb->data,
					skb->len);

#ifdef CONFIG_ADM5120_SWITCH_NAPI
				netif_receive_skb(skb);
#else
				FUNC9(skb);
#endif

				rdev->last_rx = jiffies;
				rdev->stats.rx_packets++;
				rdev->stats.rx_bytes += pktlen;

				rxl_skbuff[entry] = NULL;
				done++;
			}
		} else {
			FUNC0("no rx device, recycling skb %u\n", entry);
		}

		cur_rxl++;
		if (cur_rxl - dirty_rxl > RX_RING_SIZE / 4)
			FUNC1();
	}

	FUNC1();

	FUNC0("rx finished, cur_rxl=%u, dirty_rxl=%u, processed %d\n",
				cur_rxl, dirty_rxl, done);

	return done;
}