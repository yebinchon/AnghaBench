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
typedef  int u64 ;
struct hw_perf_event_extra {int idx; int config; int alloc; } ;
struct TYPE_2__ {struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_extra_reg {int config; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;
struct event_constraint {int dummy; } ;

/* Variables and functions */
 int EXTRA_REG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct perf_event*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore_box*) ; 
 struct event_constraint uncore_constraint_empty ; 

__attribute__((used)) static struct event_constraint *
FUNC7(struct intel_uncore_box *box, struct perf_event *event)
{
	struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
	struct intel_uncore_extra_reg *er = &box->shared_regs[0];
	unsigned long flags;
	int idx = reg1->idx;
	u64 mask, config1 = reg1->config;
	bool ok = false;

	if (reg1->idx == EXTRA_REG_NONE ||
	    (!FUNC6(box) && reg1->alloc))
		return NULL;
again:
	mask = 0xffULL << (idx * 8);
	FUNC3(&er->lock, flags);
	if (!FUNC0(FUNC2(&er->ref), idx, 8) ||
	    !((config1 ^ er->config) & mask)) {
		FUNC1(1 << (idx * 8), &er->ref);
		er->config &= ~mask;
		er->config |= config1 & mask;
		ok = true;
	}
	FUNC4(&er->lock, flags);

	if (!ok) {
		idx = (idx + 1) % 4;
		if (idx != reg1->idx) {
			config1 = FUNC5(event, idx, false);
			goto again;
		}
		return &uncore_constraint_empty;
	}

	if (!FUNC6(box)) {
		if (idx != reg1->idx)
			FUNC5(event, idx, true);
		reg1->alloc = 1;
	}
	return NULL;
}