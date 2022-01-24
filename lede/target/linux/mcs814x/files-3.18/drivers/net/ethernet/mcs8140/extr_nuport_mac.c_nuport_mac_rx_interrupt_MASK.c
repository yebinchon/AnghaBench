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
struct nuport_mac_priv {int rx_full; size_t dma_rx; int* irq_rxskb; int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; int /*<<< orphan*/ * rx_skb; scalar_t__* pkt_len; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RX_ACT_BYTES ; 
 size_t RX_RING_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct nuport_mac_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nuport_mac_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nuport_mac_priv*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nuport_mac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct nuport_mac_priv *priv = FUNC4(dev);
	unsigned long flags;
	int ret;

	FUNC9(&priv->lock, flags);
	if (!priv->rx_full) {
		priv->pkt_len[priv->dma_rx] = FUNC7(RX_ACT_BYTES) - 4;
		priv->irq_rxskb[priv->dma_rx] = 0;
		priv->dma_rx++;

		if (priv->dma_rx >= RX_RING_SIZE)
			priv->dma_rx = 0;
	} else
		priv->rx_full = 0;

	if (priv->irq_rxskb[priv->dma_rx] == 1) {
		ret = FUNC8(priv, priv->rx_skb[priv->dma_rx]);
		if (ret)
			FUNC3(dev, "failed to start rx dma\n");
	} else {
		priv->rx_full = 1;
		FUNC2(dev, "RX ring full\n");
	}

	if (FUNC0(FUNC6(priv))) {
		/* find a way to disable DMA rx irq */
		FUNC5(priv);
		FUNC1(&priv->napi);
	}
	FUNC10(&priv->lock, flags);

	return IRQ_HANDLED;
}