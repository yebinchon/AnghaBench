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
typedef  int u64 ;
struct hw_perf_event_extra {int alloc; int idx; int config; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_extra_reg {int config; scalar_t__ config1; scalar_t__ config2; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;
struct event_constraint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore_box*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore_box*) ; 
 struct event_constraint uncore_constraint_empty ; 

__attribute__((used)) static struct event_constraint *
FUNC8(struct intel_uncore_box *box, struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
	struct hw_perf_event_extra *reg2 = &hwc->branch_reg;
	struct intel_uncore_extra_reg *er;
	unsigned long flags;
	int idx, er_idx;
	u64 config1;
	bool ok = false;

	if (!FUNC7(box) && reg1->alloc)
		return NULL;

	idx = reg1->idx % 6;
	config1 = reg1->config;
again:
	er_idx = idx;
	/* the 3rd and 4th events use the same extra register */
	if (er_idx > 2)
		er_idx--;
	er_idx += (reg1->idx / 6) * 5;

	er = &box->shared_regs[er_idx];
	FUNC5(&er->lock, flags);
	if (idx < 2) {
		if (!FUNC3(&er->ref) || er->config == reg1->config) {
			FUNC2(&er->ref);
			er->config = reg1->config;
			ok = true;
		}
	} else if (idx == 2 || idx == 3) {
		/*
		 * these two events use different fields in a extra register,
		 * the 0~7 bits and the 8~15 bits respectively.
		 */
		u64 mask = 0xff << ((idx - 2) * 8);
		if (!FUNC0(FUNC3(&er->ref), idx - 2, 8) ||
				!((er->config ^ config1) & mask)) {
			FUNC1(1 << ((idx - 2) * 8), &er->ref);
			er->config &= ~mask;
			er->config |= config1 & mask;
			ok = true;
		}
	} else {
		if (!FUNC3(&er->ref) ||
				(er->config == (hwc->config >> 32) &&
				 er->config1 == reg1->config &&
				 er->config2 == reg2->config)) {
			FUNC2(&er->ref);
			er->config = (hwc->config >> 32);
			er->config1 = reg1->config;
			er->config2 = reg2->config;
			ok = true;
		}
	}
	FUNC6(&er->lock, flags);

	if (!ok) {
		/*
		 * The Rbox events are always in pairs. The paired
		 * events are functional identical, but use different
		 * extra registers. If we failed to take an extra
		 * register, try the alternative.
		 */
		idx ^= 1;
		if (idx != reg1->idx % 6) {
			if (idx == 2)
				config1 >>= 8;
			else if (idx == 3)
				config1 <<= 8;
			goto again;
		}
	} else {
		if (!FUNC7(box)) {
			if (idx != reg1->idx % 6)
				FUNC4(box, event);
			reg1->alloc = 1;
		}
		return NULL;
	}
	return &uncore_constraint_empty;
}