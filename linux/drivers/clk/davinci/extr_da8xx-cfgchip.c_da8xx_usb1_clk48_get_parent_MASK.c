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
struct da8xx_usb1_clk48 {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int CFGCHIP2_USB1PHYCLKMUX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct da8xx_usb1_clk48* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct da8xx_usb1_clk48 *usb1 = FUNC2(hw);
	unsigned int val;

	FUNC1(usb1->regmap, FUNC0(2), &val);

	return (val & CFGCHIP2_USB1PHYCLKMUX) ? 1 : 0;
}