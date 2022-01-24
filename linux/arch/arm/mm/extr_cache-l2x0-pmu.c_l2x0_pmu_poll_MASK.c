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
struct perf_event {int dummy; } ;
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_RESTART ; 
 int PMU_NR_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct perf_event** events ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  l2x0_pmu_poll_period ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static enum hrtimer_restart FUNC7(struct hrtimer *hrtimer)
{
	unsigned long flags;
	int i;

	FUNC6(flags);
	FUNC0();

	for (i = 0; i < PMU_NR_COUNTERS; i++) {
		struct perf_event *event = events[i];

		if (!event)
			continue;

		FUNC4(event);
		FUNC3(event);
	}

	FUNC1();
	FUNC5(flags);

	FUNC2(hrtimer, l2x0_pmu_poll_period);
	return HRTIMER_RESTART;
}