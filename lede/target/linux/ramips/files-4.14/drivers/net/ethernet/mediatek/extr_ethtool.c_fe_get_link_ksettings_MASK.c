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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct fe_priv {scalar_t__ phy_flags; int /*<<< orphan*/  phy_dev; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FE_PHY_FLAG_ATTACH ; 
 struct fe_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ethtool_link_ksettings*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev,
			   struct ethtool_link_ksettings *cmd)
{
	struct fe_priv *priv = FUNC0(ndev);

	if (!priv->phy_dev)
		return -ENODEV;

	if (priv->phy_flags == FE_PHY_FLAG_ATTACH) {
		if (FUNC2(priv->phy_dev))
			return -ENODEV;
	}

	FUNC1(ndev->phydev, cmd);

	return 0;
}