#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct gsw_mt753x {int phy_base; TYPE_1__* host_bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  (* write ) (TYPE_1__*,int,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MII_MMD_ACC_CTL_REG ; 
 int /*<<< orphan*/  MII_MMD_ADDR_DATA_REG ; 
 int MMD_ADDR ; 
 int MMD_CMD_S ; 
 int MMD_DATA ; 
 int MMD_DEVAD_M ; 
 int MMD_DEVAD_S ; 
 int MT753X_NUM_PHYS ; 
 int MT753X_SMI_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct gsw_mt753x *gsw, int addr, int devad,
			     u16 reg, u16 val)
{
	if (addr < MT753X_NUM_PHYS)
		addr = (gsw->phy_base + addr) & MT753X_SMI_ADDR_MASK;

	FUNC0(&gsw->host_bus->mdio_lock);

	gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ACC_CTL_REG,
		      (MMD_ADDR << MMD_CMD_S) |
		      ((devad << MMD_DEVAD_S) & MMD_DEVAD_M));

	gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ADDR_DATA_REG, reg);

	gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ACC_CTL_REG,
		      (MMD_DATA << MMD_CMD_S) |
		      ((devad << MMD_DEVAD_S) & MMD_DEVAD_M));

	gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ADDR_DATA_REG, val);

	FUNC1(&gsw->host_bus->mdio_lock);
}