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
struct tegra20_cpufreq {int /*<<< orphan*/  cpu_clk; int /*<<< orphan*/  pll_x_clk; int /*<<< orphan*/  pll_p_clk; int /*<<< orphan*/  driver; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tegra20_cpufreq* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct tegra20_cpufreq *cpufreq = FUNC2(pdev);

	FUNC1(&cpufreq->driver);

	FUNC0(cpufreq->pll_p_clk);
	FUNC0(cpufreq->pll_x_clk);
	FUNC0(cpufreq->cpu_clk);

	return 0;
}