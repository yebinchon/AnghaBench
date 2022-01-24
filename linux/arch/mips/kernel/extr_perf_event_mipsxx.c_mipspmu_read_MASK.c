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
struct hw_perf_event {scalar_t__ idx; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct hw_perf_event*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;

	/* Don't read disabled counters! */
	if (hwc->idx < 0)
		return;

	FUNC0(event, hwc, hwc->idx);
}