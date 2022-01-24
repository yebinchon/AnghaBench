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
struct hw_perf_event {int idx; int state; int /*<<< orphan*/  config; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,struct hw_perf_event*,int) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	if (FUNC0(idx == -1))
		return;

	if (flags & PERF_EF_RELOAD) {
		FUNC0(!(event->hw.state & PERF_HES_UPTODATE));
		FUNC3(event, hwc, idx);
	}

	hwc->state = 0;

	FUNC2(hwc->config, FUNC1(idx));
}