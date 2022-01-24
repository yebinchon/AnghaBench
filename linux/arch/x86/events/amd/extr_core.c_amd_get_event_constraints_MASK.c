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
struct perf_event {int /*<<< orphan*/  hw; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {int dummy; } ;

/* Variables and functions */
 struct event_constraint* FUNC0 (struct cpu_hw_events*,struct perf_event*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cpu_hw_events*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct event_constraint unconstrained ; 

__attribute__((used)) static struct event_constraint *
FUNC3(struct cpu_hw_events *cpuc, int idx,
			  struct perf_event *event)
{
	/*
	 * if not NB event or no NB, then no constraints
	 */
	if (!(FUNC1(cpuc) && FUNC2(&event->hw)))
		return &unconstrained;

	return FUNC0(cpuc, event, NULL);
}