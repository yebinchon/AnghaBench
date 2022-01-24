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
struct hw_perf_event {int idx; int state; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_REG_PCT_CONFIG ; 
 int /*<<< orphan*/  ARC_REG_PCT_INDEX ; 
 int /*<<< orphan*/  ARC_REG_PCT_INT_CTRL ; 
 int FUNC0 (int) ; 
 int PERF_EF_RELOAD ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	if (FUNC1(idx == -1))
		return;

	if (flags & PERF_EF_RELOAD)
		FUNC1(!(hwc->state & PERF_HES_UPTODATE));

	hwc->state = 0;

	FUNC2(event);

	/* Enable interrupt for this counter */
	if (FUNC3(event))
		FUNC5(ARC_REG_PCT_INT_CTRL,
			      FUNC4(ARC_REG_PCT_INT_CTRL) | FUNC0(idx));

	/* enable ARC pmu here */
	FUNC5(ARC_REG_PCT_INDEX, idx);		/* counter # */
	FUNC5(ARC_REG_PCT_CONFIG, hwc->config);	/* condition */
}