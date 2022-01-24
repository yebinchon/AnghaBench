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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct da8xx_usb1_clk48 {int /*<<< orphan*/  hw; } ;
struct da8xx_usb0_clk48 {int /*<<< orphan*/  hw; } ;
struct clk_hw_onecell_data {int num; int /*<<< orphan*/ ** hws; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct da8xx_usb1_clk48*) ; 
 int FUNC2 (struct da8xx_usb1_clk48*) ; 
 struct da8xx_usb1_clk48* FUNC3 (struct device*,struct regmap*) ; 
 struct da8xx_usb1_clk48* FUNC4 (struct device*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct clk_hw_onecell_data* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,struct clk_hw_onecell_data*) ; 
 int /*<<< orphan*/  hws ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 int /*<<< orphan*/  FUNC8 (struct clk_hw_onecell_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct regmap *regmap)
{
	struct clk_hw_onecell_data *clk_data;
	struct da8xx_usb0_clk48 *usb0;
	struct da8xx_usb1_clk48 *usb1;

	clk_data = FUNC6(dev, FUNC8(clk_data, hws, 2),
				GFP_KERNEL);
	if (!clk_data)
		return -ENOMEM;

	clk_data->num = 2;

	usb0 = FUNC3(dev, regmap);
	if (FUNC1(usb0)) {
		if (FUNC2(usb0) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC5(dev, "Failed to register usb0_clk48 (%ld)\n",
			 FUNC2(usb0));

		clk_data->hws[0] = FUNC0(-ENOENT);
	} else {
		clk_data->hws[0] = &usb0->hw;
	}

	usb1 = FUNC4(dev, regmap);
	if (FUNC1(usb1)) {
		if (FUNC2(usb1) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC5(dev, "Failed to register usb1_clk48 (%ld)\n",
			 FUNC2(usb1));

		clk_data->hws[1] = FUNC0(-ENOENT);
	} else {
		clk_data->hws[1] = &usb1->hw;
	}

	return FUNC7(dev, of_clk_hw_onecell_get, clk_data);
}