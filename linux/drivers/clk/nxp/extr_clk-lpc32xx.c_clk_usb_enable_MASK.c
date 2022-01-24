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
struct lpc32xx_usb_clk {int enable; int busy; scalar_t__ ctrl_mask; int /*<<< orphan*/  ctrl_enable; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  LPC32XX_CLKPWR_USB_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  clk_regmap ; 
 int FUNC1 (struct lpc32xx_usb_clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc32xx_usb_clk*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lpc32xx_usb_clk* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct lpc32xx_usb_clk *clk = FUNC7(hw);
	u32 val, ctrl_val, count;

	FUNC3("%s: 0x%x\n", FUNC0(hw), clk->enable);

	if (clk->ctrl_mask) {
		FUNC4(clk_regmap, LPC32XX_CLKPWR_USB_CTRL, &ctrl_val);
		FUNC5(clk_regmap, LPC32XX_CLKPWR_USB_CTRL,
				   clk->ctrl_mask, clk->ctrl_enable);
	}

	val = FUNC1(clk);
	if (clk->busy && (val & clk->busy) == clk->busy) {
		if (clk->ctrl_mask)
			FUNC6(clk_regmap, LPC32XX_CLKPWR_USB_CTRL,
				     ctrl_val);
		return -EBUSY;
	}

	val |= clk->enable;
	FUNC2(clk, val);

	for (count = 0; count < 1000; count++) {
		val = FUNC1(clk);
		if ((val & clk->enable) == clk->enable)
			break;
	}

	if ((val & clk->enable) == clk->enable)
		return 0;

	if (clk->ctrl_mask)
		FUNC6(clk_regmap, LPC32XX_CLKPWR_USB_CTRL, ctrl_val);

	return -ETIMEDOUT;
}