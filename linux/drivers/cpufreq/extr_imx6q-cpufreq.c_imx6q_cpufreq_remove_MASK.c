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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clks ; 
 int /*<<< orphan*/  cpu_dev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ free_opp ; 
 int /*<<< orphan*/  freq_table ; 
 int /*<<< orphan*/  imx6q_cpufreq_driver ; 
 int /*<<< orphan*/  num_clks ; 
 int /*<<< orphan*/  pu_reg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_reg ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	FUNC2(&imx6q_cpufreq_driver);
	FUNC3(cpu_dev, &freq_table);
	if (free_opp)
		FUNC4(cpu_dev);
	FUNC5(arm_reg);
	if (!FUNC0(pu_reg))
		FUNC5(pu_reg);
	FUNC5(soc_reg);

	FUNC1(num_clks, clks);

	return 0;
}