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
struct cpu_hw_events {struct perf_event** events; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_PERFMON_EVENTSEL_ENABLE ; 
 scalar_t__ MSR_ARCH_PERFMON_EVENTSEL0 ; 
 scalar_t__ MSR_ARCH_PERFMON_PERFCTR0 ; 
 scalar_t__ MSR_CORE_PERF_GLOBAL_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct cpu_hw_events* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long const) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct cpu_hw_events *cpuc = FUNC1(&cpu_hw_events);
	static const unsigned long nhm_magic[4] = {
		0x4300B5,
		0x4300D2,
		0x4300B1,
		0x4300B1
	};
	struct perf_event *event;
	int i;

	/*
	 * The Errata requires below steps:
	 * 1) Clear MSR_IA32_PEBS_ENABLE and MSR_CORE_PERF_GLOBAL_CTRL;
	 * 2) Configure 4 PERFEVTSELx with the magic events and clear
	 *    the corresponding PMCx;
	 * 3) set bit0~bit3 of MSR_CORE_PERF_GLOBAL_CTRL;
	 * 4) Clear MSR_CORE_PERF_GLOBAL_CTRL;
	 * 5) Clear 4 pairs of ERFEVTSELx and PMCx;
	 */

	/*
	 * The real steps we choose are a little different from above.
	 * A) To reduce MSR operations, we don't run step 1) as they
	 *    are already cleared before this function is called;
	 * B) Call x86_perf_event_update to save PMCx before configuring
	 *    PERFEVTSELx with magic number;
	 * C) With step 5), we do clear only when the PERFEVTSELx is
	 *    not used currently.
	 * D) Call x86_perf_event_set_period to restore PMCx;
	 */

	/* We always operate 4 pairs of PERF Counters */
	for (i = 0; i < 4; i++) {
		event = cpuc->events[i];
		if (event)
			FUNC4(event);
	}

	for (i = 0; i < 4; i++) {
		FUNC2(MSR_ARCH_PERFMON_EVENTSEL0 + i, nhm_magic[i]);
		FUNC2(MSR_ARCH_PERFMON_PERFCTR0 + i, 0x0);
	}

	FUNC2(MSR_CORE_PERF_GLOBAL_CTRL, 0xf);
	FUNC2(MSR_CORE_PERF_GLOBAL_CTRL, 0x0);

	for (i = 0; i < 4; i++) {
		event = cpuc->events[i];

		if (event) {
			FUNC3(event);
			FUNC0(&event->hw,
					ARCH_PERFMON_EVENTSEL_ENABLE);
		} else
			FUNC2(MSR_ARCH_PERFMON_EVENTSEL0 + i, 0x0);
	}
}