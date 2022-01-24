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
typedef  int u32 ;
struct nuport_mac_priv {int /*<<< orphan*/  emac_clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  phydev; int /*<<< orphan*/  link_irq; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_REG ; 
 int /*<<< orphan*/  LINK_INT_CSR ; 
 int /*<<< orphan*/  LINK_INT_POLL_TIME ; 
 int RX_ENABLE ; 
 int TX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nuport_mac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nuport_mac_priv*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	u32 reg;
	struct nuport_mac_priv *priv = FUNC3(dev);

	FUNC9(&priv->lock);
	reg = FUNC6(CTRL_REG);
	reg &= ~(RX_ENABLE | TX_ENABLE);
	FUNC7(reg, CTRL_REG);

	FUNC2(&priv->napi);
	FUNC4(dev);

	FUNC1(priv->link_irq, dev);
	/* disable PHY polling */
	FUNC7(0, LINK_INT_CSR);
	FUNC7(0, LINK_INT_POLL_TIME);
	FUNC8(priv->phydev);

	FUNC1(priv->tx_irq, dev);
	FUNC1(priv->rx_irq, dev);
	FUNC10(&priv->lock);

	FUNC5(priv);

	FUNC0(priv->emac_clk);

	return 0;
}