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
typedef  int u8 ;
typedef  int u32 ;
struct nuport_mac_priv {int /*<<< orphan*/  lock; TYPE_1__* phydev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int addr; int link; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  LINK_INT_CSR ; 
 int LINK_PHY_ADDR_SHIFT ; 
 int LINK_UP ; 
 int PHY_MAX_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct nuport_mac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct nuport_mac_priv *priv = FUNC1(dev);
	u32 reg;
	u8 phy_addr;
	unsigned long flags;
	irqreturn_t ret = IRQ_HANDLED;

	FUNC4(&priv->lock, flags);
	reg = FUNC3(LINK_INT_CSR);
	phy_addr = (reg >> LINK_PHY_ADDR_SHIFT) & (PHY_MAX_ADDR - 1);

	if (phy_addr != priv->phydev->addr) {
		FUNC0(dev, "spurious PHY irq (phy: %d)\n", phy_addr);
		ret = IRQ_NONE;
		goto out;
	}

	priv->phydev->link = (reg & LINK_UP);
	FUNC2(dev);

out:
	FUNC5(&priv->lock, flags);
	return ret;
}