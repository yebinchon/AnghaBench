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
typedef  unsigned long u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct TYPE_2__ {unsigned long sample_period; int state; unsigned long last_period; int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  idx; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  count; } ;
typedef  unsigned long s64 ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_sample_data*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event, unsigned long val,
			       struct pt_regs *regs)
{
	u64 period = event->hw.sample_period;
	s64 prev, delta, left;
	int record = 0;

	if (event->hw.state & PERF_HES_STOPPED) {
		FUNC7(event->hw.idx, 0);
		return;
	}

	/* we don't have to worry about interrupts here */
	prev = FUNC2(&event->hw.prev_count);
	delta = (val - prev) & 0xfffffffful;
	FUNC1(delta, &event->count);

	/*
	 * See if the total period for this event has expired,
	 * and update for the next period.
	 */
	val = 0;
	left = FUNC2(&event->hw.period_left) - delta;
	if (period) {
		if (left <= 0) {
			left += period;
			if (left <= 0)
				left = period;
			record = 1;
			event->hw.last_period = event->hw.sample_period;
		}
		if (left < 0x80000000LL)
			val = 0x80000000LL - left;
	}

	FUNC7(event->hw.idx, val);
	FUNC3(&event->hw.prev_count, val);
	FUNC3(&event->hw.period_left, left);
	FUNC5(event);

	/*
	 * Finally record data if requested.
	 */
	if (record) {
		struct perf_sample_data data;

		FUNC6(&data, 0, event->hw.last_period);

		if (FUNC4(event, &data, regs))
			FUNC0(event, 0);
	}
}