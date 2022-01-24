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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct phy_device {int supported; int advertising; scalar_t__ duplex; scalar_t__ speed; int /*<<< orphan*/  autoneg; TYPE_1__ mdio; } ;
struct fe_priv {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ADVERTISED_Autoneg ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  CONFIG_NET_MEDIATEK_MDIO_MT7620 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_BASIC_FEATURES ; 
 int PHY_GBIT_FEATURES ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static void FUNC4(struct fe_priv *priv, struct phy_device *phy)
{
	FUNC2(priv->netdev, FUNC1(&phy->mdio.dev), PHY_INTERFACE_MODE_MII);

	phy->autoneg = AUTONEG_ENABLE;
	phy->speed = 0;
	phy->duplex = 0;
	phy->supported &= FUNC0(CONFIG_NET_MEDIATEK_MDIO_MT7620) ?
			PHY_GBIT_FEATURES : PHY_BASIC_FEATURES;
	phy->advertising = phy->supported | ADVERTISED_Autoneg;

	FUNC3(phy);
}