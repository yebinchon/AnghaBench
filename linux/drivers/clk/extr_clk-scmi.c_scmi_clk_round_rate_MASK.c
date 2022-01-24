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
typedef  unsigned long u64 ;
struct scmi_clk {TYPE_2__* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {unsigned long min_rate; unsigned long max_rate; int step_size; } ;
struct TYPE_4__ {TYPE_1__ range; scalar_t__ rate_discrete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 struct scmi_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				unsigned long *parent_rate)
{
	u64 fmin, fmax, ftmp;
	struct scmi_clk *clk = FUNC1(hw);

	/*
	 * We can't figure out what rate it will be, so just return the
	 * rate back to the caller. scmi_clk_recalc_rate() will be called
	 * after the rate is set and we'll know what rate the clock is
	 * running at then.
	 */
	if (clk->info->rate_discrete)
		return rate;

	fmin = clk->info->range.min_rate;
	fmax = clk->info->range.max_rate;
	if (rate <= fmin)
		return fmin;
	else if (rate >= fmax)
		return fmax;

	ftmp = rate - fmin;
	ftmp += clk->info->range.step_size - 1; /* to round up */
	FUNC0(ftmp, clk->info->range.step_size);

	return ftmp * clk->info->range.step_size + fmin;
}