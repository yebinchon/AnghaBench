#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_8__ {int config; int idx; int /*<<< orphan*/  event_base; } ;
struct TYPE_7__ {int config; scalar_t__ type; scalar_t__ sample_period; } ;
struct perf_event {int cpu; TYPE_2__ hw; TYPE_4__* pmu; TYPE_1__ attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  msr; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {int /*<<< orphan*/  msr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int PERF_CSTATE_CORE_EVENT_MAX ; 
 int PERF_CSTATE_PKG_EVENT_MAX ; 
 int FUNC0 (unsigned long,int) ; 
 TYPE_6__* core_msr ; 
 int core_msr_mask ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cstate_core_cpu_mask ; 
 TYPE_4__ cstate_core_pmu ; 
 int /*<<< orphan*/  cstate_pkg_cpu_mask ; 
 TYPE_4__ cstate_pkg_pmu ; 
 int nr_cpu_ids ; 
 TYPE_3__* pkg_msr ; 
 int pkg_msr_mask ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct perf_event *event)
{
	u64 cfg = event->attr.config;
	int cpu;

	if (event->attr.type != event->pmu->type)
		return -ENOENT;

	/* unsupported modes and filters */
	if (event->attr.sample_period) /* no sampling */
		return -EINVAL;

	if (event->cpu < 0)
		return -EINVAL;

	if (event->pmu == &cstate_core_pmu) {
		if (cfg >= PERF_CSTATE_CORE_EVENT_MAX)
			return -EINVAL;
		cfg = FUNC0((unsigned long)cfg, PERF_CSTATE_CORE_EVENT_MAX);
		if (!(core_msr_mask & (1 << cfg)))
			return -EINVAL;
		event->hw.event_base = core_msr[cfg].msr;
		cpu = FUNC1(&cstate_core_cpu_mask,
				      FUNC3(event->cpu));
	} else if (event->pmu == &cstate_pkg_pmu) {
		if (cfg >= PERF_CSTATE_PKG_EVENT_MAX)
			return -EINVAL;
		cfg = FUNC0((unsigned long)cfg, PERF_CSTATE_PKG_EVENT_MAX);
		if (!(pkg_msr_mask & (1 << cfg)))
			return -EINVAL;
		event->hw.event_base = pkg_msr[cfg].msr;
		cpu = FUNC1(&cstate_pkg_cpu_mask,
				      FUNC2(event->cpu));
	} else {
		return -ENOENT;
	}

	if (cpu >= nr_cpu_ids)
		return -ENODEV;

	event->cpu = cpu;
	event->hw.config = cfg;
	event->hw.idx = -1;
	return 0;
}