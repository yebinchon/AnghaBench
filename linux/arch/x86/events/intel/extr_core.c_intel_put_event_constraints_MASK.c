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
struct perf_event {int dummy; } ;
struct cpu_hw_events {scalar_t__ excl_cntrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*,struct perf_event*) ; 

__attribute__((used)) static void FUNC2(struct cpu_hw_events *cpuc,
					struct perf_event *event)
{
	FUNC1(cpuc, event);

	/*
	 * is PMU has exclusive counter restrictions, then
	 * all events are subject to and must call the
	 * put_excl_constraints() routine
	 */
	if (cpuc->excl_cntrs)
		FUNC0(cpuc, event);
}