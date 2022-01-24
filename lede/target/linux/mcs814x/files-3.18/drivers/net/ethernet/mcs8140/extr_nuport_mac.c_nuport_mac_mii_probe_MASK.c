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
struct phy_device {int /*<<< orphan*/  addr; TYPE_2__* drv; int /*<<< orphan*/  supported; int /*<<< orphan*/  advertising; } ;
struct nuport_mac_priv {int old_link; int /*<<< orphan*/  ephy_clk; TYPE_1__* pdev; int /*<<< orphan*/  old_duplex; struct phy_device* phydev; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phy_node; int /*<<< orphan*/  mii_bus; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_BASIC_FEATURES ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct nuport_mac_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  nuport_mac_adjust_link ; 
 struct phy_device* FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct nuport_mac_priv *priv = FUNC6(dev);
	struct phy_device *phydev = NULL;
	int ret;

	ret = FUNC3(priv->ephy_clk);
	if (ret) {
		FUNC5(dev, "unable to enable ePHY clk\n");
		return ret;
	}

	phydev = FUNC8(priv->mii_bus);
	if (!phydev) {
		FUNC5(dev, "no PHYs found\n");
		ret = -ENODEV;
		goto out;
	}

	phydev = FUNC7(dev, priv->phy_node,
			nuport_mac_adjust_link, 0,
			priv->phy_interface);
	if (FUNC0(phydev)) {
		FUNC5(dev, "could not attach PHY\n");
		ret = FUNC1(phydev);
		goto out;
	}

	phydev->supported &= PHY_BASIC_FEATURES;
	phydev->advertising = phydev->supported;
	priv->phydev = phydev;
	priv->old_link = 1;
	priv->old_duplex = DUPLEX_FULL;

	FUNC4(&priv->pdev->dev, "attached PHY driver [%s] "
		"(mii_bus:phy_addr=%d)\n",
		phydev->drv->name, phydev->addr);

	return 0;

out:
	/* disable the Ethernet PHY clock for the moment */
	FUNC2(priv->ephy_clk);

	return ret;
}