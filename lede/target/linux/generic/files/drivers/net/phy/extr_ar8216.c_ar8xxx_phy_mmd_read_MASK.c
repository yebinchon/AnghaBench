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
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  (* read ) (struct mii_bus*,int,int /*<<< orphan*/ ) ;} ;
struct ar8xxx_priv {struct mii_bus* mii_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ATH_MMD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct mii_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*,int,int /*<<< orphan*/ ) ; 

u16
FUNC4(struct ar8xxx_priv *priv, int phy_addr, u16 addr, u16 reg)
{
	struct mii_bus *bus = priv->mii_bus;
	u16 data;

	FUNC1(&bus->mdio_lock);
	FUNC0(bus, phy_addr, addr, reg);
	data = bus->read(bus, phy_addr, MII_ATH_MMD_DATA);
	FUNC2(&bus->mdio_lock);

	return data;
}