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
struct clk_bulk_devres {int num_clks; struct clk_bulk_data* clks; } ;
struct clk_bulk_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*,int,struct clk_bulk_data*) ; 
 int FUNC1 (struct device*,int,struct clk_bulk_data*) ; 
 int /*<<< orphan*/  devm_clk_bulk_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct clk_bulk_devres*) ; 
 struct clk_bulk_devres* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_bulk_devres*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int num_clks,
			       struct clk_bulk_data *clks, bool optional)
{
	struct clk_bulk_devres *devres;
	int ret;

	devres = FUNC3(devm_clk_bulk_release,
			      sizeof(*devres), GFP_KERNEL);
	if (!devres)
		return -ENOMEM;

	if (optional)
		ret = FUNC1(dev, num_clks, clks);
	else
		ret = FUNC0(dev, num_clks, clks);
	if (!ret) {
		devres->clks = clks;
		devres->num_clks = num_clks;
		FUNC2(dev, devres);
	} else {
		FUNC4(devres);
	}

	return ret;
}