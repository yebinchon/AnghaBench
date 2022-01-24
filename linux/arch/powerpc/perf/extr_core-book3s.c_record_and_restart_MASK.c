#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int /*<<< orphan*/  weight; int /*<<< orphan*/  data_src; int /*<<< orphan*/ * br_stack; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int sample_type; } ;
struct TYPE_4__ {scalar_t__ sample_period; int state; scalar_t__ last_period; int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  idx; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; int /*<<< orphan*/  count; } ;
struct cpu_hw_events {int /*<<< orphan*/  bhrb_stack; } ;
typedef  scalar_t__ s64 ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_mem_weight ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  (* get_mem_data_src ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pt_regs*) ;} ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int PERF_SAMPLE_ADDR ; 
 int PERF_SAMPLE_BRANCH_STACK ; 
 int PERF_SAMPLE_DATA_SRC ; 
 int PERF_SAMPLE_PHYS_ADDR ; 
 int PERF_SAMPLE_WEIGHT ; 
 scalar_t__ FUNC0 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt_regs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_sample_data*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cpu_hw_events*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*,int /*<<< orphan*/ ) ; 
 TYPE_3__* ppmu ; 
 int FUNC10 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct cpu_hw_events* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct perf_event *event, unsigned long val,
			       struct pt_regs *regs)
{
	u64 period = event->hw.sample_period;
	s64 prev, delta, left;
	int record = 0;

	if (event->hw.state & PERF_HES_STOPPED) {
		FUNC14(event->hw.idx, 0);
		return;
	}

	/* we don't have to worry about interrupts here */
	prev = FUNC2(&event->hw.prev_count);
	delta = FUNC0(prev, val);
	FUNC1(delta, &event->count);

	/*
	 * See if the total period for this event has expired,
	 * and update for the next period.
	 */
	val = 0;
	left = FUNC2(&event->hw.period_left) - delta;
	if (delta == 0)
		left++;
	if (period) {
		if (left <= 0) {
			left += period;
			if (left <= 0)
				left = period;
			record = FUNC10(regs);
			event->hw.last_period = event->hw.sample_period;
		}
		if (left < 0x80000000LL)
			val = 0x80000000LL - left;
	}

	FUNC14(event->hw.idx, val);
	FUNC3(&event->hw.prev_count, val);
	FUNC3(&event->hw.period_left, left);
	FUNC5(event);

	/*
	 * Finally record data if requested.
	 */
	if (record) {
		struct perf_sample_data data;

		FUNC7(&data, ~0ULL, event->hw.last_period);

		if (event->attr.sample_type &
		    (PERF_SAMPLE_ADDR | PERF_SAMPLE_PHYS_ADDR))
			FUNC6(regs, &data.addr);

		if (event->attr.sample_type & PERF_SAMPLE_BRANCH_STACK) {
			struct cpu_hw_events *cpuhw;
			cpuhw = FUNC13(&cpu_hw_events);
			FUNC8(cpuhw);
			data.br_stack = &cpuhw->bhrb_stack;
		}

		if (event->attr.sample_type & PERF_SAMPLE_DATA_SRC &&
						ppmu->get_mem_data_src)
			ppmu->get_mem_data_src(&data.data_src, ppmu->flags, regs);

		if (event->attr.sample_type & PERF_SAMPLE_WEIGHT &&
						ppmu->get_mem_weight)
			ppmu->get_mem_weight(&data.weight);

		if (FUNC4(event, &data, regs))
			FUNC9(event, 0);
	}
}