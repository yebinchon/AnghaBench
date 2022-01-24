#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hw_perf_event_extra {scalar_t__ idx; } ;
struct TYPE_2__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {int dummy; } ;

/* Variables and functions */
 scalar_t__ EXTRA_REG_NONE ; 
 struct event_constraint* FUNC0 (struct cpu_hw_events*,struct perf_event*,struct hw_perf_event_extra*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*,struct hw_perf_event_extra*) ; 
 struct event_constraint emptyconstraint ; 

__attribute__((used)) static struct event_constraint *
FUNC2(struct cpu_hw_events *cpuc,
			      struct perf_event *event)
{
	struct event_constraint *c = NULL, *d;
	struct hw_perf_event_extra *xreg, *breg;

	xreg = &event->hw.extra_reg;
	if (xreg->idx != EXTRA_REG_NONE) {
		c = FUNC0(cpuc, event, xreg);
		if (c == &emptyconstraint)
			return c;
	}
	breg = &event->hw.branch_reg;
	if (breg->idx != EXTRA_REG_NONE) {
		d = FUNC0(cpuc, event, breg);
		if (d == &emptyconstraint) {
			FUNC1(cpuc, xreg);
			c = d;
		}
	}
	return c;
}