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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nuport_mac_priv {size_t dma_tx; int first_pkt; int /*<<< orphan*/  lock; scalar_t__ tx_full; struct sk_buff** tx_skb; scalar_t__* valid_txskb; int /*<<< orphan*/  rx_addr; TYPE_2__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TX_DMA_STATUS ; 
 int TX_DMA_STATUS_AVAIL ; 
 size_t TX_RING_SIZE ; 
 int /*<<< orphan*/  TX_START_DMA ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct nuport_mac_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nuport_mac_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct nuport_mac_priv *priv = FUNC4(dev);
	struct sk_buff *skb;
	unsigned long flags;
	int ret;
	u32 reg;

	FUNC9(&priv->lock, flags);
	/* clear status word available if ready */
	reg = FUNC6(TX_START_DMA);
	if (reg & TX_DMA_STATUS_AVAIL) {
		FUNC8(reg, TX_START_DMA);
		reg = FUNC6(TX_DMA_STATUS);

		if (reg & 1)
			dev->stats.tx_errors++;
	} else
		FUNC2(dev, "no status word: %08x\n", reg);

	skb = priv->tx_skb[priv->dma_tx];
	priv->tx_skb[priv->dma_tx] = NULL;
	priv->valid_txskb[priv->dma_tx] = 0;
	FUNC1(&priv->pdev->dev, priv->rx_addr, skb->len,
				DMA_TO_DEVICE);
	FUNC0(skb);

	priv->dma_tx++;
	if (priv->dma_tx >= TX_RING_SIZE)
		priv->dma_tx = 0;

	if (!priv->valid_txskb[priv->dma_tx])
		priv->first_pkt = 1;
	else {
		ret = FUNC7(priv, priv->tx_skb[priv->dma_tx]);
		if (ret)
			FUNC3(dev, "failed to restart TX dma\n");
	}

	if (priv->tx_full) {
		FUNC2(dev, "restarting transmit queue\n");
		FUNC5(dev);
		priv->tx_full = 0;
	}

	FUNC10(&priv->lock, flags);

	return IRQ_HANDLED;
}