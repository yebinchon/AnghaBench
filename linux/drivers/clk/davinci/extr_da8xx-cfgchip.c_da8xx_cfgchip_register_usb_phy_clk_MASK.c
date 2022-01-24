#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  clk; } ;
struct da8xx_usb1_clk48 {TYPE_1__ hw; } ;
struct da8xx_usb0_clk48 {TYPE_1__ hw; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct da8xx_usb1_clk48*) ; 
 int FUNC1 (struct da8xx_usb1_clk48*) ; 
 struct clk_hw* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da8xx_usb1_clk48* FUNC5 (struct device*,struct regmap*) ; 
 struct da8xx_usb1_clk48* FUNC6 (struct device*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
					      struct regmap *regmap)
{
	struct da8xx_usb0_clk48 *usb0;
	struct da8xx_usb1_clk48 *usb1;
	struct clk_hw *parent;

	usb0 = FUNC5(dev, regmap);
	if (FUNC0(usb0))
		return FUNC1(usb0);

	/*
	 * All existing boards use pll0_auxclk as the parent and new boards
	 * should use device tree, so hard-coding the value (1) here.
	 */
	parent = FUNC2(&usb0->hw, 1);
	if (parent)
		FUNC4(usb0->hw.clk, parent->clk);
	else
		FUNC7(dev, "Failed to find usb0 parent clock\n");

	usb1 = FUNC6(dev, regmap);
	if (FUNC0(usb1))
		return FUNC1(usb1);

	/*
	 * All existing boards use usb0_clk48 as the parent and new boards
	 * should use device tree, so hard-coding the value (0) here.
	 */
	parent = FUNC2(&usb1->hw, 0);
	if (parent)
		FUNC4(usb1->hw.clk, parent->clk);
	else
		FUNC7(dev, "Failed to find usb1 parent clock\n");

	FUNC3(&usb0->hw, "usb0_clk48", "da8xx-usb-phy");
	FUNC3(&usb1->hw, "usb1_clk48", "da8xx-usb-phy");

	return 0;
}