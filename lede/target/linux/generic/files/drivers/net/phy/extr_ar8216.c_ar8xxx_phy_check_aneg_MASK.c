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
struct phy_device {scalar_t__ autoneg; TYPE_1__ mdio; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct phy_device *phydev)
{
	int ret;

	if (phydev->autoneg != AUTONEG_ENABLE)
		return 0;
	/*
	 * BMCR_ANENABLE might have been cleared
	 * by phy_init_hw in certain kernel versions
	 * therefore check for it
	 */
	ret = FUNC1(phydev, MII_BMCR);
	if (ret < 0)
		return ret;
	if (ret & BMCR_ANENABLE)
		return 0;

	FUNC0(&phydev->mdio.dev, "ANEG disabled, re-enabling ...\n");
	ret |= BMCR_ANENABLE | BMCR_ANRESTART;
	return FUNC2(phydev, MII_BMCR, ret);
}