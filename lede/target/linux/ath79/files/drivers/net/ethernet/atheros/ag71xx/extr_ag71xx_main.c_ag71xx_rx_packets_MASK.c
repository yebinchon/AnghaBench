#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; struct net_device* dev; } ;
struct TYPE_5__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_2__ stats; } ;
struct ag71xx_ring {int curr; int dirty; TYPE_3__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {unsigned int ctrl; } ;
struct ag71xx {unsigned int desc_pktlen_mask; unsigned int rx_buf_offset; int /*<<< orphan*/  rx_buf_size; TYPE_1__* pdev; struct ag71xx_ring rx_ring; struct net_device* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_RX_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  RX_STATUS_PR ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*) ; 
 scalar_t__ FUNC6 (struct ag71xx_desc*) ; 
 struct ag71xx_desc* FUNC7 (struct ag71xx_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC19(struct ag71xx *ag, int limit)
{
	struct net_device *dev = ag->dev;
	struct ag71xx_ring *ring = &ag->rx_ring;
	unsigned int pktlen_mask = ag->desc_pktlen_mask;
	unsigned int offset = ag->rx_buf_offset;
	int ring_mask = FUNC0(ring->order) - 1;
	int ring_size = FUNC0(ring->order);
	struct sk_buff_head queue;
	struct sk_buff *skb;
	int done = 0;

	FUNC1("%s: rx packets, limit=%d, curr=%u, dirty=%u\n",
			dev->name, limit, ring->curr, ring->dirty);

	FUNC17(&queue);

	while (done < limit) {
		unsigned int i = ring->curr & ring_mask;
		struct ag71xx_desc *desc = FUNC7(ring, i);
		int pktlen;
		int err = 0;

		if (FUNC6(desc))
			break;

		if ((ring->dirty + ring_size) == ring->curr) {
			FUNC4(0);
			break;
		}

		FUNC9(ag, AG71XX_REG_RX_STATUS, RX_STATUS_PR);

		pktlen = desc->ctrl & pktlen_mask;
		pktlen -= ETH_FCS_LEN;

		FUNC11(&ag->pdev->dev, ring->buf[i].dma_addr,
				 ag->rx_buf_size, DMA_FROM_DEVICE);

		dev->stats.rx_packets++;
		dev->stats.rx_bytes += pktlen;

		skb = FUNC10(ring->buf[i].rx_buf, FUNC5(ag));
		if (!skb) {
			FUNC15(ring->buf[i].rx_buf);
			goto next;
		}

		FUNC18(skb, offset);
		FUNC16(skb, pktlen);

		if (err) {
			dev->stats.rx_dropped++;
			FUNC13(skb);
		} else {
			skb->dev = dev;
			skb->ip_summed = CHECKSUM_NONE;
			FUNC3(&queue, skb);
		}

next:
		ring->buf[i].rx_buf = NULL;
		done++;

		ring->curr++;
	}

	FUNC8(ag);

	while ((skb = FUNC2(&queue)) != NULL) {
		skb->protocol = FUNC12(skb, dev);
		FUNC14(skb);
	}

	FUNC1("%s: rx finish, curr=%u, dirty=%u, done=%d\n",
		dev->name, ring->curr, ring->dirty, done);

	return done;
}