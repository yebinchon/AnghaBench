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
struct tegra_dfll {int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  soc_clk; int /*<<< orphan*/  i2c_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct tegra_dfll* FUNC3 (struct device*) ; 

int FUNC4(struct device *dev)
{
	struct tegra_dfll *td = FUNC3(dev);
	int ret;

	ret = FUNC1(td->ref_clk);
	if (ret) {
		FUNC2(dev, "could not enable ref clock: %d\n", ret);
		return ret;
	}

	ret = FUNC1(td->soc_clk);
	if (ret) {
		FUNC2(dev, "could not enable register clock: %d\n", ret);
		FUNC0(td->ref_clk);
		return ret;
	}

	ret = FUNC1(td->i2c_clk);
	if (ret) {
		FUNC2(dev, "could not enable i2c clock: %d\n", ret);
		FUNC0(td->soc_clk);
		FUNC0(td->ref_clk);
		return ret;
	}

	return 0;
}