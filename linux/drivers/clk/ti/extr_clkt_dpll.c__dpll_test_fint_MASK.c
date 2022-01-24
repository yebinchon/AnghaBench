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
struct dpll_data {int flags; unsigned int max_divider; unsigned int min_divider; } ;
struct clk_hw_omap {int /*<<< orphan*/  hw; struct dpll_data* dpll_data; } ;
struct TYPE_2__ {long fint_min; long fint_max; long fint_band1_max; long fint_band2_min; } ;

/* Variables and functions */
 int DPLL_FINT_INVALID ; 
 int DPLL_FINT_UNDERFLOW ; 
 int DPLL_J_TYPE ; 
 long OMAP3PLUS_DPLL_FINT_JTYPE_MAX ; 
 long OMAP3PLUS_DPLL_FINT_JTYPE_MIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 TYPE_1__* FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct clk_hw_omap *clk, unsigned int n)
{
	struct dpll_data *dd;
	long fint, fint_min, fint_max;
	int ret = 0;

	dd = clk->dpll_data;

	/* DPLL divider must result in a valid jitter correction val */
	fint = FUNC2(FUNC1(&clk->hw)) / n;

	if (dd->flags & DPLL_J_TYPE) {
		fint_min = OMAP3PLUS_DPLL_FINT_JTYPE_MIN;
		fint_max = OMAP3PLUS_DPLL_FINT_JTYPE_MAX;
	} else {
		fint_min = FUNC4()->fint_min;
		fint_max = FUNC4()->fint_max;
	}

	if (!fint_min || !fint_max) {
		FUNC0(1, "No fint limits available!\n");
		return DPLL_FINT_INVALID;
	}

	if (fint < FUNC4()->fint_min) {
		FUNC3("rejecting n=%d due to Fint failure, lowering max_divider\n",
			 n);
		dd->max_divider = n;
		ret = DPLL_FINT_UNDERFLOW;
	} else if (fint > FUNC4()->fint_max) {
		FUNC3("rejecting n=%d due to Fint failure, boosting min_divider\n",
			 n);
		dd->min_divider = n;
		ret = DPLL_FINT_INVALID;
	} else if (fint > FUNC4()->fint_band1_max &&
		   fint < FUNC4()->fint_band2_min) {
		FUNC3("rejecting n=%d due to Fint failure\n", n);
		ret = DPLL_FINT_INVALID;
	}

	return ret;
}