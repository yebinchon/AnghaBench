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
typedef  int u32 ;
struct nuport_mac_priv {int /*<<< orphan*/  emac_clk; int /*<<< orphan*/  link_irq; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  napi; int /*<<< orphan*/  lock; int /*<<< orphan*/ * rx_skb; TYPE_1__* phydev; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_REG ; 
 int DEFER_CHECK ; 
 int DRTRY_DISABLE ; 
 int FULL_DUPLEX ; 
 int HBD_DISABLE ; 
 int LINK_BIT_UP_SHIFT ; 
 int /*<<< orphan*/  LINK_INT_CSR ; 
 int LINK_INT_EN ; 
 int /*<<< orphan*/  LINK_INT_POLL_TIME ; 
 int LINK_PHY_ADDR_SHIFT ; 
 int LINK_PHY_REG_SHIFT ; 
 int LINK_POLL_MASK ; 
 int RX_ENABLE ; 
 int STRIP_PAD ; 
 int TX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct nuport_mac_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nuport_mac_priv*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct nuport_mac_priv*) ; 
 int /*<<< orphan*/  nuport_mac_link_interrupt ; 
 int /*<<< orphan*/  FUNC11 (struct nuport_mac_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct nuport_mac_priv*) ; 
 int /*<<< orphan*/  nuport_mac_rx_interrupt ; 
 int FUNC13 (struct nuport_mac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nuport_mac_tx_interrupt ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC19(struct net_device *dev)
{
	int ret;
	struct nuport_mac_priv *priv = FUNC5(dev);
	unsigned long flags;
	u32 reg = 0;

	ret = FUNC1(priv->emac_clk);
	if (ret) {
		FUNC4(dev, "failed to enable EMAC clock\n");
		return ret;
	}

	/* Set MAC into full duplex mode by default */
	reg |= RX_ENABLE | TX_ENABLE;
	reg |= DEFER_CHECK | STRIP_PAD | DRTRY_DISABLE;
	reg |= FULL_DUPLEX | HBD_DISABLE;
	FUNC14(reg, CTRL_REG);

	/* set mac address in hardware in case it was not already */
	FUNC7(dev, dev->dev_addr);

	ret = FUNC16(priv->link_irq, &nuport_mac_link_interrupt,
				0, dev->name, dev);
	if (ret) {
		FUNC4(dev, "unable to request link interrupt\n");
		goto out_emac_clk;
	}

	ret = FUNC16(priv->tx_irq, &nuport_mac_tx_interrupt,
				0, dev->name, dev);
	if (ret) {
		FUNC4(dev, "unable to request rx interrupt\n");
		goto out_link_irq;
	}

	/* Enable link interrupt monitoring for our PHY address */
	reg = LINK_INT_EN | (priv->phydev->addr << LINK_PHY_ADDR_SHIFT);
	/* MII_BMSR register to be watched */
	reg |= (1 << LINK_PHY_REG_SHIFT);
	/* BMSR_STATUS to be watched in particular */
	reg |= (2 << LINK_BIT_UP_SHIFT);

	FUNC17(&priv->lock, flags);
	FUNC14(reg, LINK_INT_CSR);
	FUNC14(LINK_POLL_MASK, LINK_INT_POLL_TIME);
	FUNC18(&priv->lock, flags);

	FUNC15(priv->phydev);

	ret = FUNC16(priv->rx_irq, &nuport_mac_rx_interrupt,
				0, dev->name, dev);
	if (ret) {
		FUNC4(dev, "unable to request tx interrupt\n");
		goto out_tx_irq;
	}

	FUNC6(dev);

	FUNC10(priv);

	ret = FUNC9(dev);
	if (ret) {
		FUNC4(dev, "rx ring init failed\n");
		goto out_rx_skb;
	}

	FUNC12(priv);
	FUNC11(priv);

	/* Start RX DMA */
	FUNC17(&priv->lock, flags);
	ret = FUNC13(priv, priv->rx_skb[0]);
	FUNC18(&priv->lock, flags);

	FUNC3(&priv->napi);

	return ret;

out_rx_skb:
	FUNC8(priv);
	FUNC2(priv->rx_irq, dev);
out_tx_irq:
	FUNC2(priv->tx_irq, dev);
out_link_irq:
	FUNC2(priv->link_irq, dev);
out_emac_clk:
	FUNC0(priv->emac_clk);
	return ret;
}