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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_TEGRA_114_SOC ; 
 int /*<<< orphan*/  CONFIG_ARCH_TEGRA_124_SOC ; 
 int /*<<< orphan*/  CONFIG_ARCH_TEGRA_2x_SOC ; 
 int /*<<< orphan*/  CONFIG_ARCH_TEGRA_3x_SOC ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEGRA114 ; 
 scalar_t__ TEGRA124 ; 
 scalar_t__ TEGRA20 ; 
 scalar_t__ TEGRA30 ; 
 int FUNC1 (unsigned int,struct task_struct*) ; 
 int FUNC2 (unsigned int,struct task_struct*) ; 
 int FUNC3 (unsigned int,struct task_struct*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(unsigned int cpu,
					  struct task_struct *idle)
{
	if (FUNC0(CONFIG_ARCH_TEGRA_2x_SOC) && FUNC4() == TEGRA20)
		return FUNC2(cpu, idle);
	if (FUNC0(CONFIG_ARCH_TEGRA_3x_SOC) && FUNC4() == TEGRA30)
		return FUNC3(cpu, idle);
	if (FUNC0(CONFIG_ARCH_TEGRA_114_SOC) && FUNC4() == TEGRA114)
		return FUNC1(cpu, idle);
	if (FUNC0(CONFIG_ARCH_TEGRA_124_SOC) && FUNC4() == TEGRA124)
		return FUNC1(cpu, idle);

	return -EINVAL;
}