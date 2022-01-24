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
struct TYPE_2__ {int /*<<< orphan*/ * lbr_exclusive; scalar_t__ lbr_pt_coexist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int /*<<< orphan*/  active_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_reserve_mutex ; 
 unsigned int x86_lbr_exclusive_pt ; 
 TYPE_1__ x86_pmu ; 

int FUNC6(unsigned int what)
{
	int i;

	/*
	 * When lbr_pt_coexist we allow PT to coexist with either LBR or BTS.
	 * LBR and BTS are still mutually exclusive.
	 */
	if (x86_pmu.lbr_pt_coexist && what == x86_lbr_exclusive_pt)
		return 0;

	if (!FUNC2(&x86_pmu.lbr_exclusive[what])) {
		FUNC4(&pmc_reserve_mutex);
		for (i = 0; i < FUNC0(x86_pmu.lbr_exclusive); i++) {
			if (i != what && FUNC3(&x86_pmu.lbr_exclusive[i]))
				goto fail_unlock;
		}
		FUNC1(&x86_pmu.lbr_exclusive[what]);
		FUNC5(&pmc_reserve_mutex);
	}

	FUNC1(&active_events);
	return 0;

fail_unlock:
	FUNC5(&pmc_reserve_mutex);
	return -EBUSY;
}