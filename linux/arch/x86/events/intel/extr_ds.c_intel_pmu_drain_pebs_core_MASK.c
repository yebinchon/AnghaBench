#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  precise_ip; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__ attr; } ;
struct pebs_record_core {int dummy; } ;
struct debug_store {scalar_t__ pebs_buffer_base; scalar_t__ pebs_index; } ;
struct cpu_hw_events {int /*<<< orphan*/  active_mask; struct perf_event** events; struct debug_store* ds; } ;
struct TYPE_6__ {int /*<<< orphan*/  pebs_active; } ;

/* Variables and functions */
 int PERF_X86_EVENT_AUTO_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct pt_regs*,struct pebs_record_core*,struct pebs_record_core*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup_pebs_fixed_sample_data ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__ x86_pmu ; 

__attribute__((used)) static void FUNC5(struct pt_regs *iregs)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	struct debug_store *ds = cpuc->ds;
	struct perf_event *event = cpuc->events[0]; /* PMC0 only */
	struct pebs_record_core *at, *top;
	int n;

	if (!x86_pmu.pebs_active)
		return;

	at  = (struct pebs_record_core *)(unsigned long)ds->pebs_buffer_base;
	top = (struct pebs_record_core *)(unsigned long)ds->pebs_index;

	/*
	 * Whatever else happens, drain the thing
	 */
	ds->pebs_index = ds->pebs_buffer_base;

	if (!FUNC3(0, cpuc->active_mask))
		return;

	FUNC0(!event);

	if (!event->attr.precise_ip)
		return;

	n = top - at;
	if (n <= 0) {
		if (event->hw.flags & PERF_X86_EVENT_AUTO_RELOAD)
			FUNC2(event, 0);
		return;
	}

	FUNC1(event, iregs, at, top, 0, n,
			       setup_pebs_fixed_sample_data);
}