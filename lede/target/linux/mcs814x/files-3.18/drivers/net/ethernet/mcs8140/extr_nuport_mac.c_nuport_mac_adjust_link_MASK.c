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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {scalar_t__ link; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct nuport_mac_priv {scalar_t__ old_link; int /*<<< orphan*/  old_duplex; struct phy_device* phydev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CTRL_REG ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 struct nuport_mac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct nuport_mac_priv *priv = FUNC1(dev);
	struct phy_device *phydev = priv->phydev;
	unsigned int status_changed = 0;
	u32 reg;

	FUNC0(!phydev);

	if (priv->old_link != phydev->link) {
		status_changed = 1;
		priv->old_link = phydev->link;
	}

	if (phydev->link && (priv->old_duplex != phydev->duplex)) {
		reg = FUNC2(CTRL_REG);
		if (phydev->duplex == DUPLEX_FULL)
			reg |= DUPLEX_FULL;
		else
			reg &= ~DUPLEX_FULL;
		FUNC3(reg, CTRL_REG);

		status_changed = 1;
		priv->old_duplex = phydev->duplex;
	}

	if (!status_changed)
		return;

	FUNC5("%s: link %s", dev->name, phydev->link ?
		"UP" : "DOWN");
	if (phydev->link) {
		FUNC4(" - %d/%s", phydev->speed,
		phydev->duplex == DUPLEX_FULL ? "full" : "half");
	}
	FUNC4("\n");
}