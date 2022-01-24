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
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 unsigned int AR7240_MDIO_CTRL_BUSY ; 
 unsigned int AR7240_MDIO_CTRL_CMD_WRITE ; 
 unsigned int AR7240_MDIO_CTRL_MASTER_EN ; 
 unsigned int AR7240_MDIO_CTRL_PHY_ADDR_S ; 
 unsigned int AR7240_MDIO_CTRL_REG_ADDR_S ; 
 unsigned int AR7240_NUM_PHYS ; 
 int /*<<< orphan*/  AR7240_REG_MDIO_CTRL ; 
 int EINVAL ; 
 int FUNC0 (struct mii_bus*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_mutex ; 

int FUNC4(struct mii_bus *mii, unsigned phy_addr,
		       unsigned reg_addr, u16 reg_val)
{
	u32 t;
	int ret;

	if (phy_addr >= AR7240_NUM_PHYS)
		return -EINVAL;

	FUNC2(&reg_mutex);
	t = (phy_addr << AR7240_MDIO_CTRL_PHY_ADDR_S) |
	    (reg_addr << AR7240_MDIO_CTRL_REG_ADDR_S) |
	    AR7240_MDIO_CTRL_MASTER_EN |
	    AR7240_MDIO_CTRL_BUSY |
	    AR7240_MDIO_CTRL_CMD_WRITE |
	    reg_val;

	FUNC1(mii, AR7240_REG_MDIO_CTRL, t);
	ret = FUNC0(mii, AR7240_REG_MDIO_CTRL,
				  AR7240_MDIO_CTRL_BUSY, 0, 5);
	FUNC3(&reg_mutex);

	return ret;
}