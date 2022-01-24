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
typedef  scalar_t__ u8 ;
struct da8xx_usb0_clk48 {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CFGCHIP2_USB2PHYCLKMUX ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da8xx_usb0_clk48* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, u8 index)
{
	struct da8xx_usb0_clk48 *usb0 = FUNC2(hw);

	return FUNC1(usb0->regmap, FUNC0(2),
				 CFGCHIP2_USB2PHYCLKMUX,
				 index ? CFGCHIP2_USB2PHYCLKMUX : 0);
}