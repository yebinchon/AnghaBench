#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct clk_hw_onecell_data {int num; struct clk_hw** hws; } ;
struct clk_hw {TYPE_1__* init; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct device*,struct clk_hw*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,struct clk_hw_onecell_data*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 

int FUNC4(struct device *dev, struct clk_hw_onecell_data *hw_clks)
{
	int i, ret;
	struct clk_hw *hw;

	for (i = 0; i < hw_clks->num; i++) {
		const char *name;

		hw = hw_clks->hws[i];
		if (FUNC0(hw))
			continue;

		name = hw->init->name;
		ret = FUNC2(dev, hw);
		if (ret) {
			FUNC1(dev, "Couldn't register clock %d - %s\n",
				i, name);
			return ret;
		}
	}

	ret = FUNC3(dev, of_clk_hw_onecell_get, hw_clks);
	if (ret)
		FUNC1(dev, "Failed to add clock provider\n");

	return ret;
}