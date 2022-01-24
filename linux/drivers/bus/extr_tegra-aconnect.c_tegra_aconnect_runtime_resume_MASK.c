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
struct tegra_aconnect {int /*<<< orphan*/  ape_clk; int /*<<< orphan*/  apb2ape_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct tegra_aconnect* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct tegra_aconnect *aconnect = FUNC3(dev);
	int ret;

	ret = FUNC1(aconnect->ape_clk);
	if (ret) {
		FUNC2(dev, "ape clk_enable failed: %d\n", ret);
		return ret;
	}

	ret = FUNC1(aconnect->apb2ape_clk);
	if (ret) {
		FUNC0(aconnect->ape_clk);
		FUNC2(dev, "apb2ape clk_enable failed: %d\n", ret);
		return ret;
	}

	return 0;
}