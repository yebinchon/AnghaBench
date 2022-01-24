#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_dfll {int lut_bottom; int lut_size; int* lut_uv; TYPE_2__* soc; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_3__ {int step_uv; } ;
struct TYPE_4__ {TYPE_1__ alignment; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC3 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_pm_opp*) ; 

__attribute__((used)) static int FUNC5(struct tegra_dfll *td, unsigned long rate)
{
	struct dev_pm_opp *opp;
	int i, align_step;

	opp = FUNC2(td->soc->dev, &rate);
	if (FUNC0(opp))
		return FUNC1(opp);

	align_step = FUNC3(opp) / td->soc->alignment.step_uv;
	FUNC4(opp);

	for (i = td->lut_bottom; i < td->lut_size; i++) {
		if ((td->lut_uv[i] / td->soc->alignment.step_uv) >= align_step)
			return i;
	}

	return -ENOENT;
}