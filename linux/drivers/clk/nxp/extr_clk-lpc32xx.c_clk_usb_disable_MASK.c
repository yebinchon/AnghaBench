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
struct lpc32xx_usb_clk {int /*<<< orphan*/  ctrl_disable; scalar_t__ ctrl_mask; int /*<<< orphan*/  enable; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC32XX_CLKPWR_USB_CTRL ; 
 int /*<<< orphan*/  clk_regmap ; 
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_usb_clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc32xx_usb_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct lpc32xx_usb_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct lpc32xx_usb_clk *clk = FUNC3(hw);
	u32 val = FUNC0(clk);

	val &= ~clk->enable;
	FUNC1(clk, val);

	if (clk->ctrl_mask)
		FUNC2(clk_regmap, LPC32XX_CLKPWR_USB_CTRL,
				   clk->ctrl_mask, clk->ctrl_disable);
}