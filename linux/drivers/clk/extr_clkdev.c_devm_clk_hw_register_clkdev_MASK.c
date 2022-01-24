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
struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_clkdev_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct clk_lookup**) ; 
 struct clk_lookup** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_lookup**) ; 
 int FUNC3 (struct clk_hw*,struct clk_lookup**,char const*,char const*) ; 

int FUNC4(struct device *dev, struct clk_hw *hw,
				const char *con_id, const char *dev_id)
{
	int rval = -ENOMEM;
	struct clk_lookup **cl;

	cl = FUNC1(devm_clkdev_release, sizeof(*cl), GFP_KERNEL);
	if (cl) {
		rval = FUNC3(hw, cl, con_id, dev_id);
		if (!rval)
			FUNC0(dev, cl);
		else
			FUNC2(cl);
	}
	return rval;
}