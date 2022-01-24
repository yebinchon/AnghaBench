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
struct tegra_dfll {int* lut; int lut_size; int /*<<< orphan*/  vdd_reg; int /*<<< orphan*/ * lut_uv; TYPE_2__* soc; int /*<<< orphan*/  dev; int /*<<< orphan*/  dvco_rate_min; scalar_t__ lut_bottom; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cvb; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int min_millivolts; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int MAX_DFLL_VOLTAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct dev_pm_opp* FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pm_opp*) ; 
 unsigned long FUNC4 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_pm_opp*) ; 
 int FUNC6 (struct tegra_dfll*,unsigned long) ; 
 int FUNC7 (struct tegra_dfll*,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct tegra_dfll *td, unsigned long v_max)
{
	unsigned long rate, v, v_opp;
	int ret = -EINVAL;
	int j, selector, lut;

	v = td->soc->cvb->min_millivolts * 1000;
	lut = FUNC6(td, v);
	if (lut < 0)
		goto out;
	td->lut[0] = lut;
	td->lut_bottom = 0;

	for (j = 1, rate = 0; ; rate++) {
		struct dev_pm_opp *opp;

		opp = FUNC2(td->soc->dev, &rate);
		if (FUNC0(opp))
			break;
		v_opp = FUNC4(opp);

		if (v_opp <= td->soc->cvb->min_millivolts * 1000)
			td->dvco_rate_min = FUNC3(opp);

		FUNC5(opp);

		for (;;) {
			v += FUNC8(1UL, (v_max - v) / (MAX_DFLL_VOLTAGES - j));
			if (v >= v_opp)
				break;

			selector = FUNC7(td, v);
			if (selector < 0)
				goto out;
			if (selector != td->lut[j - 1])
				td->lut[j++] = selector;
		}

		v = (j == MAX_DFLL_VOLTAGES - 1) ? v_max : v_opp;
		selector = FUNC6(td, v);
		if (selector < 0)
			goto out;
		if (selector != td->lut[j - 1])
			td->lut[j++] = selector;

		if (v >= v_max)
			break;
	}
	td->lut_size = j;

	if (!td->dvco_rate_min)
		FUNC1(td->dev, "no opp above DFLL minimum voltage %d mV\n",
			td->soc->cvb->min_millivolts);
	else {
		ret = 0;
		for (j = 0; j < td->lut_size; j++)
			td->lut_uv[j] =
				FUNC9(td->vdd_reg,
						       td->lut[j]);
	}

out:
	return ret;
}