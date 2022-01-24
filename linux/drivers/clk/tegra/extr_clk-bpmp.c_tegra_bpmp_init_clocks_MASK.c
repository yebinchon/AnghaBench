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
struct tegra_bpmp_clk_info {int dummy; } ;
struct tegra_bpmp {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_bpmp_clk_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_bpmp*) ; 
 int /*<<< orphan*/  tegra_bpmp_clk_of_xlate ; 
 int FUNC3 (struct tegra_bpmp*,struct tegra_bpmp_clk_info**) ; 
 int FUNC4 (struct tegra_bpmp*,struct tegra_bpmp_clk_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_bpmp*) ; 

int FUNC6(struct tegra_bpmp *bpmp)
{
	struct tegra_bpmp_clk_info *clocks;
	unsigned int count;
	int err;

	err = FUNC3(bpmp, &clocks);
	if (err < 0)
		return err;

	count = err;

	FUNC0(bpmp->dev, "%u clocks probed\n", count);

	err = FUNC4(bpmp, clocks, count);
	if (err < 0)
		goto free;

	err = FUNC2(bpmp->dev->of_node,
				     tegra_bpmp_clk_of_xlate,
				     bpmp);
	if (err < 0) {
		FUNC5(bpmp);
		goto free;
	}

free:
	FUNC1(clocks);
	return err;
}