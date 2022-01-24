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
struct da8xx_usb0_clk48 {int /*<<< orphan*/  fck; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int CFGCHIP2_PHYCLKGD ; 
 unsigned int CFGCHIP2_PHYPWRDN ; 
 unsigned int CFGCHIP2_PHY_PLLON ; 
 unsigned int CFGCHIP2_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct da8xx_usb0_clk48* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct da8xx_usb0_clk48 *usb0 = FUNC5(hw);
	unsigned int mask, val;
	int ret;

	/* Locking the USB 2.O PLL requires that the USB 2.O PSC is enabled
	 * temporaily. It can be turned back off once the PLL is locked.
	 */
	FUNC2(usb0->fck);

	/* Turn on the USB 2.0 PHY, but just the PLL, and not OTG. The USB 1.1
	 * PHY may use the USB 2.0 PLL clock without USB 2.0 OTG being used.
	 */
	mask = CFGCHIP2_RESET | CFGCHIP2_PHYPWRDN | CFGCHIP2_PHY_PLLON;
	val = CFGCHIP2_PHY_PLLON;

	FUNC4(usb0->regmap, FUNC0(2), mask, val);
	ret = FUNC3(usb0->regmap, FUNC0(2), val,
				       val & CFGCHIP2_PHYCLKGD, 0, 500000);

	FUNC1(usb0->fck);

	return ret;
}