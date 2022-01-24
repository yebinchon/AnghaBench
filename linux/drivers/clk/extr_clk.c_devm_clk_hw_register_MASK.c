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
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*,struct clk_hw*) ; 
 int /*<<< orphan*/  devm_clk_hw_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct clk_hw**) ; 
 struct clk_hw** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw**) ; 

int FUNC4(struct device *dev, struct clk_hw *hw)
{
	struct clk_hw **hwp;
	int ret;

	hwp = FUNC2(devm_clk_hw_release, sizeof(*hwp), GFP_KERNEL);
	if (!hwp)
		return -ENOMEM;

	ret = FUNC0(dev, hw);
	if (!ret) {
		*hwp = hw;
		FUNC1(dev, hwp);
	} else {
		FUNC3(hwp);
	}

	return ret;
}