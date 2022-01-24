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
struct device {scalar_t__ of_node; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct clk* FUNC2 (struct device*,char const*,char const*) ; 
 struct clk* FUNC3 (struct device*,struct clk_hw*,char const*,char const*) ; 
 char* FUNC4 (struct device*) ; 
 struct clk_hw* FUNC5 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 

struct clk *FUNC6(struct device *dev, const char *con_id)
{
	const char *dev_id = dev ? FUNC4(dev) : NULL;
	struct clk_hw *hw;

	if (dev && dev->of_node) {
		hw = FUNC5(dev->of_node, 0, con_id);
		if (!FUNC0(hw) || FUNC1(hw) == -EPROBE_DEFER)
			return FUNC3(dev, hw, dev_id, con_id);
	}

	return FUNC2(dev, dev_id, con_id);
}