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
struct TYPE_2__ {int precise_ip; } ;
struct hw_perf_event {unsigned long long idx; scalar_t__ config_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;
struct cpu_hw_events {unsigned long long intel_ctrl_guest_mask; unsigned long long intel_ctrl_host_mask; unsigned long long intel_cp_status; } ;

/* Variables and functions */
 unsigned long long INTEL_PMC_IDX_FIXED_BTS ; 
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR_CTRL ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);

	if (FUNC5(hwc->idx == INTEL_PMC_IDX_FIXED_BTS)) {
		FUNC0();
		FUNC2();
		return;
	}

	cpuc->intel_ctrl_guest_mask &= ~(1ull << hwc->idx);
	cpuc->intel_ctrl_host_mask &= ~(1ull << hwc->idx);
	cpuc->intel_cp_status &= ~(1ull << hwc->idx);

	if (FUNC5(hwc->config_base == MSR_ARCH_PERFMON_FIXED_CTR_CTRL))
		FUNC1(hwc);
	else
		FUNC6(event);

	/*
	 * Needs to be called after x86_pmu_disable_event,
	 * so we don't trigger the event without PEBS bit set.
	 */
	if (FUNC5(event->attr.precise_ip))
		FUNC3(event);
}