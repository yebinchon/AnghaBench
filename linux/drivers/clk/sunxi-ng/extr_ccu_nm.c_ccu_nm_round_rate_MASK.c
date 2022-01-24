#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_7__ {int features; } ;
struct TYPE_6__ {int width; scalar_t__ max; } ;
struct TYPE_5__ {int width; scalar_t__ max; scalar_t__ min; } ;
struct ccu_nm {unsigned long fixed_post_div; unsigned long min_rate; unsigned long max_rate; TYPE_3__ common; TYPE_2__ m; TYPE_1__ n; int /*<<< orphan*/  sdm; int /*<<< orphan*/  frac; } ;
struct _ccu_nm {int min_n; int max_n; int min_m; int max_m; int /*<<< orphan*/  m; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 int CCU_FEATURE_FIXED_POSTDIV ; 
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long,struct _ccu_nm*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,unsigned long) ; 
 struct ccu_nm* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC5(struct clk_hw *hw, unsigned long rate,
			      unsigned long *parent_rate)
{
	struct ccu_nm *nm = FUNC4(hw);
	struct _ccu_nm _nm;

	if (nm->common.features & CCU_FEATURE_FIXED_POSTDIV)
		rate *= nm->fixed_post_div;

	if (rate < nm->min_rate) {
		rate = nm->min_rate;
		if (nm->common.features & CCU_FEATURE_FIXED_POSTDIV)
			rate /= nm->fixed_post_div;
		return rate;
	}

	if (nm->max_rate && rate > nm->max_rate) {
		rate = nm->max_rate;
		if (nm->common.features & CCU_FEATURE_FIXED_POSTDIV)
			rate /= nm->fixed_post_div;
		return rate;
	}

	if (FUNC0(&nm->common, &nm->frac, rate)) {
		if (nm->common.features & CCU_FEATURE_FIXED_POSTDIV)
			rate /= nm->fixed_post_div;
		return rate;
	}

	if (FUNC3(&nm->common, &nm->sdm, rate)) {
		if (nm->common.features & CCU_FEATURE_FIXED_POSTDIV)
			rate /= nm->fixed_post_div;
		return rate;
	}

	_nm.min_n = nm->n.min ?: 1;
	_nm.max_n = nm->n.max ?: 1 << nm->n.width;
	_nm.min_m = 1;
	_nm.max_m = nm->m.max ?: 1 << nm->m.width;

	FUNC2(*parent_rate, rate, &_nm);
	rate = FUNC1(*parent_rate, _nm.n, _nm.m);

	if (nm->common.features & CCU_FEATURE_FIXED_POSTDIV)
		rate /= nm->fixed_post_div;

	return rate;
}