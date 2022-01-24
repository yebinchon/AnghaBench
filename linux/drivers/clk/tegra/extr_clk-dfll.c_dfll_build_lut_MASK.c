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
struct tegra_dfll {scalar_t__ pmu_if; int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 scalar_t__ TEGRA_DFLL_PMU_PWM ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct dev_pm_opp* FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC3 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_pm_opp*) ; 
 int FUNC5 (struct tegra_dfll*,unsigned long) ; 
 int FUNC6 (struct tegra_dfll*,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct tegra_dfll *td)
{
	unsigned long rate, v_max;
	struct dev_pm_opp *opp;

	rate = ULONG_MAX;
	opp = FUNC2(td->soc->dev, &rate);
	if (FUNC0(opp)) {
		FUNC1(td->dev, "couldn't get vmax opp, empty opp table?\n");
		return -EINVAL;
	}
	v_max = FUNC3(opp);
	FUNC4(opp);

	if (td->pmu_if == TEGRA_DFLL_PMU_PWM)
		return FUNC6(td, v_max);
	else
		return FUNC5(td, v_max);
}