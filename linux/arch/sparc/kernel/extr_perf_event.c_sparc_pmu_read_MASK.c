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
struct hw_perf_event {int dummy; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct hw_perf_event*,int) ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event)
{
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);
	int idx = FUNC0(cpuc, event);
	struct hw_perf_event *hwc = &event->hw;

	FUNC1(event, hwc, idx);
}