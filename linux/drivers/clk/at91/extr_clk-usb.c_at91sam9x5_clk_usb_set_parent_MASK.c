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
typedef  int u8 ;
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {int /*<<< orphan*/  usbs_mask; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_USB ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct at91sam9x5_clk_usb* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct at91sam9x5_clk_usb *usb = FUNC1(hw);

	if (index > 1)
		return -EINVAL;

	FUNC0(usb->regmap, AT91_PMC_USB, usb->usbs_mask, index);

	return 0;
}