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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_3__ stats; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct ag71xx_ring {int curr; int dirty; scalar_t__ desc_split; TYPE_1__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {int /*<<< orphan*/  ctrl; } ;
struct ag71xx {int desc_pktlen_mask; TYPE_2__* dev; struct ag71xx_ring tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int len; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_TX_CTRL ; 
 int AG71XX_TX_RING_DS_PER_PKT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DESC_EMPTY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TX_CTRL_TXE ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,struct sk_buff*) ; 
 int FUNC3 (struct ag71xx_ring*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ag71xx*) ; 
 struct ag71xx_desc* FUNC5 (struct ag71xx_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct ag71xx* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static netdev_tx_t FUNC15(struct sk_buff *skb,
					  struct net_device *dev)
{
	struct ag71xx *ag = FUNC10(dev);
	struct ag71xx_ring *ring = &ag->tx_ring;
	int ring_mask = FUNC0(ring->order) - 1;
	int ring_size = FUNC0(ring->order);
	struct ag71xx_desc *desc;
	dma_addr_t dma_addr;
	int i, n, ring_min;

	if (FUNC4(ag))
		FUNC2(ag, skb);

	if (skb->len <= 4) {
		FUNC1("%s: packet len is too small\n", ag->dev->name);
		goto err_drop;
	}

	dma_addr = FUNC8(&dev->dev, skb->data, skb->len,
				  DMA_TO_DEVICE);

	i = ring->curr & ring_mask;
	desc = FUNC5(ring, i);

	/* setup descriptor fields */
	n = FUNC3(ring, (u32) dma_addr, skb->len & ag->desc_pktlen_mask);
	if (n < 0)
		goto err_drop_unmap;

	i = (ring->curr + n - 1) & ring_mask;
	ring->buf[i].len = skb->len;
	ring->buf[i].skb = skb;

	FUNC11(dev, skb->len);

	FUNC13(skb);

	desc->ctrl &= ~DESC_EMPTY;
	ring->curr += n;

	/* flush descriptor */
	FUNC14();

	ring_min = 2;
	if (ring->desc_split)
	    ring_min *= AG71XX_TX_RING_DS_PER_PKT;

	if (ring->curr - ring->dirty >= ring_size - ring_min) {
		FUNC1("%s: tx queue full\n", dev->name);
		FUNC12(dev);
	}

	FUNC1("%s: packet injected into TX queue\n", ag->dev->name);

	/* enable TX engine */
	FUNC6(ag, AG71XX_REG_TX_CTRL, TX_CTRL_TXE);

	return NETDEV_TX_OK;

err_drop_unmap:
	FUNC9(&dev->dev, dma_addr, skb->len, DMA_TO_DEVICE);

err_drop:
	dev->stats.tx_dropped++;

	FUNC7(skb);
	return NETDEV_TX_OK;
}