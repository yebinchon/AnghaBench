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
typedef  size_t u8 ;
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {struct clk_core* core; } ;
struct clk_core {struct device_node* of_node; struct device* dev; TYPE_1__* parents; } ;
struct TYPE_2__ {char* fw_name; int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct clk_core* FUNC0 (struct clk_hw*) ; 
 struct clk_hw* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct clk_hw*) ; 
 struct clk_hw* FUNC3 (char const*,char const*) ; 
 char* FUNC4 (struct device*) ; 
 struct clk_hw* FUNC5 (struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,int,char const*,struct of_phandle_args*) ; 

__attribute__((used)) static struct clk_core *FUNC8(struct clk_core *core, u8 p_index)
{
	const char *name = core->parents[p_index].fw_name;
	int index = core->parents[p_index].index;
	struct clk_hw *hw = FUNC1(-ENOENT);
	struct device *dev = core->dev;
	const char *dev_id = dev ? FUNC4(dev) : NULL;
	struct device_node *np = core->of_node;
	struct of_phandle_args clkspec;

	if (np && (name || index >= 0) &&
	    !FUNC7(np, index, name, &clkspec)) {
		hw = FUNC5(&clkspec);
		FUNC6(clkspec.np);
	} else if (name) {
		/*
		 * If the DT search above couldn't find the provider fallback to
		 * looking up via clkdev based clk_lookups.
		 */
		hw = FUNC3(dev_id, name);
	}

	if (FUNC2(hw))
		return FUNC0(hw);

	return hw->core;
}