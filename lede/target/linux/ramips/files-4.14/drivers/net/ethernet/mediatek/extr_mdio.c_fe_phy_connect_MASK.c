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
struct fe_priv {int /*<<< orphan*/  phy_flags; scalar_t__ mii_bus; scalar_t__ phy_dev; TYPE_1__* phy; } ;
struct TYPE_2__ {scalar_t__* phy; scalar_t__* phy_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_PHY_FLAG_ATTACH ; 
 int /*<<< orphan*/  FE_PHY_FLAG_PORT ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fe_priv*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct fe_priv *priv)
{
	int i;

	for (i = 0; i < 8; i++) {
		if (priv->phy->phy_node[i]) {
			if (!priv->phy_dev) {
				priv->phy_dev = priv->phy->phy[i];
				priv->phy_flags = FE_PHY_FLAG_PORT;
			}
		} else if (priv->mii_bus && FUNC0(priv->mii_bus, i)) {
			FUNC1(priv, FUNC0(priv->mii_bus, i));
			if (!priv->phy_dev) {
				priv->phy_dev = FUNC0(priv->mii_bus, i);
				priv->phy_flags = FE_PHY_FLAG_ATTACH;
			}
		}
	}

	return 0;
}