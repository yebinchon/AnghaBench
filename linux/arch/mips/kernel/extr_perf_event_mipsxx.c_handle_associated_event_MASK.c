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
struct pt_regs {int dummy; } ;
struct perf_sample_data {int /*<<< orphan*/  period; } ;
struct hw_perf_event {int /*<<< orphan*/  last_period; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {struct perf_event** events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct hw_perf_event*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct hw_perf_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct perf_event*,struct perf_sample_data*,struct pt_regs*) ; 

__attribute__((used)) static void FUNC4(struct cpu_hw_events *cpuc,
				    int idx, struct perf_sample_data *data,
				    struct pt_regs *regs)
{
	struct perf_event *event = cpuc->events[idx];
	struct hw_perf_event *hwc = &event->hw;

	FUNC1(event, hwc, idx);
	data->period = event->hw.last_period;
	if (!FUNC0(event, hwc, idx))
		return;

	if (FUNC3(event, data, regs))
		FUNC2(idx);
}