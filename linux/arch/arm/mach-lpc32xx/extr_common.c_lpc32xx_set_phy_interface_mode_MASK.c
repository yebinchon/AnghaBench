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
typedef  scalar_t__ phy_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  LPC32XX_CLKPWR_MACCLK_CTRL ; 
 int /*<<< orphan*/  LPC32XX_CLKPWR_MACCTRL_PINS_MSK ; 
 int /*<<< orphan*/  LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS ; 
 int /*<<< orphan*/  LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS ; 
 scalar_t__ PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(phy_interface_t mode)
{
	u32 tmp = FUNC0(LPC32XX_CLKPWR_MACCLK_CTRL);
	tmp &= ~LPC32XX_CLKPWR_MACCTRL_PINS_MSK;
	if (mode == PHY_INTERFACE_MODE_MII)
		tmp |= LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS;
	else
		tmp |= LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS;
	FUNC1(tmp, LPC32XX_CLKPWR_MACCLK_CTRL);
}