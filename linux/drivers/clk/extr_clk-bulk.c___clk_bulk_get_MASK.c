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
struct clk_bulk_data {int /*<<< orphan*/  id; int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct clk_bulk_data*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int num_clks,
			  struct clk_bulk_data *clks, bool optional)
{
	int ret;
	int i;

	for (i = 0; i < num_clks; i++)
		clks[i].clk = NULL;

	for (i = 0; i < num_clks; i++) {
		clks[i].clk = FUNC3(dev, clks[i].id);
		if (FUNC0(clks[i].clk)) {
			ret = FUNC1(clks[i].clk);
			clks[i].clk = NULL;

			if (ret == -ENOENT && optional)
				continue;

			if (ret != -EPROBE_DEFER)
				FUNC4(dev, "Failed to get clk '%s': %d\n",
					clks[i].id, ret);
			goto err;
		}
	}

	return 0;

err:
	FUNC2(i, clks);

	return ret;
}