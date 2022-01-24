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
struct hw_perf_event {int state; int /*<<< orphan*/  idx; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct hw_perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;

	if (flags & PERF_EF_RELOAD)
		FUNC0(!(hwc->state & PERF_HES_UPTODATE));

	hwc->state = 0;

	/* Set the period for the event. */
	FUNC1(event, hwc, hwc->idx);

	/* Enable the event. */
	FUNC2(hwc, hwc->idx);
}