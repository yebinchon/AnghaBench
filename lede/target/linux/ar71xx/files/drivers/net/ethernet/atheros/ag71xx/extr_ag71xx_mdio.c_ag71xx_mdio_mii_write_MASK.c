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
typedef  int u16 ;
struct ag71xx_mdio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MII_ADDR ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int MII_ADDR_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx_mdio*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx_mdio*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ag71xx_mdio *am, int addr, int reg, u16 val)
{
	FUNC0("mii_write: addr=%04x, reg=%04x, value=%04x\n", addr, reg, val);

	FUNC2(am, AG71XX_REG_MII_ADDR,
			((addr & 0xff) << MII_ADDR_SHIFT) | (reg & 0xff));
	FUNC2(am, AG71XX_REG_MII_CTRL, val);

	FUNC1(am);
}