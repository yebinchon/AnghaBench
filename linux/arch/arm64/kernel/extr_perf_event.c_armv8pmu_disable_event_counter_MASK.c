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
typedef  int /*<<< orphan*/  u32 ;
struct perf_event_attr {int dummy; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct perf_event_attr attr; struct hw_perf_event hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_attr*) ; 

__attribute__((used)) static inline void FUNC6(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct perf_event_attr *attr = &event->attr;
	int idx = hwc->idx;
	u32 counter_bits = FUNC1(FUNC0(idx));

	if (FUNC3(event))
		counter_bits |= FUNC1(FUNC0(idx - 1));

	FUNC4(counter_bits);

	/* We rely on the hypervisor switch code to disable guest counters */
	if (!FUNC5(attr)) {
		if (FUNC3(event))
			FUNC2(idx - 1);
		FUNC2(idx);
	}
}