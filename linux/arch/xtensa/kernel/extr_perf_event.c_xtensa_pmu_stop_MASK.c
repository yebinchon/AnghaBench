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
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,struct hw_perf_event*,int) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	if (!(hwc->state & PERF_HES_STOPPED)) {
		FUNC3(0, FUNC0(idx));
		FUNC3(FUNC2(FUNC1(idx)),
		       FUNC1(idx));
		hwc->state |= PERF_HES_STOPPED;
	}

	if ((flags & PERF_EF_UPDATE) &&
	    !(event->hw.state & PERF_HES_UPTODATE)) {
		FUNC4(event, &event->hw, idx);
		event->hw.state |= PERF_HES_UPTODATE;
	}
}