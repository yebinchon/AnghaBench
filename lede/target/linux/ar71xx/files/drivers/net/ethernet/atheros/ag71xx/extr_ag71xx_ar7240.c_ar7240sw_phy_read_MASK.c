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
typedef  int u16 ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 unsigned int AR7240_MDIO_CTRL_BUSY ; 
 unsigned int AR7240_MDIO_CTRL_CMD_READ ; 
 int AR7240_MDIO_CTRL_DATA_M ; 
 unsigned int AR7240_MDIO_CTRL_MASTER_EN ; 
 unsigned int AR7240_MDIO_CTRL_PHY_ADDR_S ; 
 unsigned int AR7240_MDIO_CTRL_REG_ADDR_S ; 
 unsigned int AR7240_NUM_PHYS ; 
 int /*<<< orphan*/  AR7240_REG_MDIO_CTRL ; 
 int FUNC0 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mii_bus*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_mutex ; 

u16 FUNC5(struct mii_bus *mii, unsigned phy_addr,
		      unsigned reg_addr)
{
	u32 t, val = 0xffff;
	int err;

	if (phy_addr >= AR7240_NUM_PHYS)
		return 0xffff;

	FUNC3(&reg_mutex);
	t = (reg_addr << AR7240_MDIO_CTRL_REG_ADDR_S) |
	    (phy_addr << AR7240_MDIO_CTRL_PHY_ADDR_S) |
	    AR7240_MDIO_CTRL_MASTER_EN |
	    AR7240_MDIO_CTRL_BUSY |
	    AR7240_MDIO_CTRL_CMD_READ;

	FUNC2(mii, AR7240_REG_MDIO_CTRL, t);
	err = FUNC1(mii, AR7240_REG_MDIO_CTRL,
				  AR7240_MDIO_CTRL_BUSY, 0, 5);
	if (!err)
		val = FUNC0(mii, AR7240_REG_MDIO_CTRL);
	FUNC4(&reg_mutex);

	return val & AR7240_MDIO_CTRL_DATA_M;
}