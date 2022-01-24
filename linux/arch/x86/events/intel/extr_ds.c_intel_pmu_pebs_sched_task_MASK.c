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
struct perf_event_context {int dummy; } ;
struct cpu_hw_events {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct cpu_hw_events*) ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct perf_event_context *ctx, bool sched_in)
{
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);

	if (!sched_in && FUNC1(cpuc))
		FUNC0();
}