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
struct clk_hw {int dummy; } ;
struct at91sam9x5_clk_usb {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_OHCIUSBDIV ; 
 int /*<<< orphan*/  AT91_PMC_USB ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 unsigned long SAM9X5_USB_DIV_SHIFT ; 
 int SAM9X5_USB_MAX_DIV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct at91sam9x5_clk_usb* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
				       unsigned long parent_rate)
{
	struct at91sam9x5_clk_usb *usb = FUNC2(hw);
	unsigned long div;

	if (!rate)
		return -EINVAL;

	div = FUNC0(parent_rate, rate);
	if (div > SAM9X5_USB_MAX_DIV + 1 || !div)
		return -EINVAL;

	FUNC1(usb->regmap, AT91_PMC_USB, AT91_PMC_OHCIUSBDIV,
			   (div - 1) << SAM9X5_USB_DIV_SHIFT);

	return 0;
}