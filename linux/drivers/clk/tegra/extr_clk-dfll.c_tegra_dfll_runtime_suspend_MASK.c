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
struct tegra_dfll {int /*<<< orphan*/  i2c_clk; int /*<<< orphan*/  soc_clk; int /*<<< orphan*/  ref_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_dfll* FUNC1 (struct device*) ; 

int FUNC2(struct device *dev)
{
	struct tegra_dfll *td = FUNC1(dev);

	FUNC0(td->ref_clk);
	FUNC0(td->soc_clk);
	FUNC0(td->i2c_clk);

	return 0;
}