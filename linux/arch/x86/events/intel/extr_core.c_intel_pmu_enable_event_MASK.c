#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int precise_ip; scalar_t__ exclude_guest; scalar_t__ exclude_host; } ;
struct hw_perf_event {unsigned long long idx; scalar_t__ config_base; int /*<<< orphan*/  config; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; } ;
struct cpu_hw_events {unsigned long long intel_ctrl_guest_mask; unsigned long long intel_ctrl_host_mask; unsigned long long intel_cp_status; } ;
struct TYPE_5__ {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_PERFMON_EVENTSEL_ENABLE ; 
 unsigned long long INTEL_PMC_IDX_FIXED_BTS ; 
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hw_perf_event*,int /*<<< orphan*/ ) ; 
 TYPE_2__ cpu_hw_events ; 
 int FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 struct cpu_hw_events* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct cpu_hw_events *cpuc = FUNC6(&cpu_hw_events);

	if (FUNC7(hwc->idx == INTEL_PMC_IDX_FIXED_BTS)) {
		if (!FUNC0(cpu_hw_events.enabled))
			return;

		FUNC3(hwc->config);
		return;
	}

	if (event->attr.exclude_host)
		cpuc->intel_ctrl_guest_mask |= (1ull << hwc->idx);
	if (event->attr.exclude_guest)
		cpuc->intel_ctrl_host_mask |= (1ull << hwc->idx);

	if (FUNC7(FUNC2(event)))
		cpuc->intel_cp_status |= (1ull << hwc->idx);

	if (FUNC7(event->attr.precise_ip))
		FUNC5(event);

	if (FUNC7(hwc->config_base == MSR_ARCH_PERFMON_FIXED_CTR_CTRL)) {
		FUNC4(event);
		return;
	}

	FUNC1(hwc, ARCH_PERFMON_EVENTSEL_ENABLE);
}