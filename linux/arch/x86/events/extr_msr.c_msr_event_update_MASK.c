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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ event_base; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; TYPE_1__ hw; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ MSR_IA32_THERM_STATUS ; 
 scalar_t__ MSR_SMI_COUNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (struct perf_event*) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event)
{
	u64 prev, now;
	s64 delta;

	/* Careful, an NMI might modify the previous event value: */
again:
	prev = FUNC2(&event->hw.prev_count);
	now = FUNC4(event);

	if (FUNC1(&event->hw.prev_count, prev, now) != prev)
		goto again;

	delta = now - prev;
	if (FUNC6(event->hw.event_base == MSR_SMI_COUNT)) {
		delta = FUNC5(delta, 31);
		FUNC0(delta, &event->count);
	} else if (FUNC6(event->hw.event_base == MSR_IA32_THERM_STATUS)) {
		/* If valid, extract digital readout, otherwise set to -1: */
		now = now & (1ULL << 31) ? (now >> 16) & 0x3f :  -1;
		FUNC3(&event->count, now);
	} else {
		FUNC0(delta, &event->count);
	}
}