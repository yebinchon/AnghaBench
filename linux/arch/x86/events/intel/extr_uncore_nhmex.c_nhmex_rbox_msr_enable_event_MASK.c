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
struct hw_perf_event_extra {int idx; int config; } ;
struct hw_perf_event {int config; int /*<<< orphan*/  config_base; struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {TYPE_1__* pmu; } ;
struct TYPE_2__ {int pmu_idx; } ;

/* Variables and functions */
 int NHMEX_PMON_CTL_EN_BIT0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int NHMEX_R_PMON_CTL_EV_SEL_MASK ; 
 int FUNC9 (struct intel_uncore_box*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct intel_uncore_box *box, struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
	struct hw_perf_event_extra *reg2 = &hwc->branch_reg;
	int idx, port;

	idx = reg1->idx;
	port = idx / 6 + box->pmu->pmu_idx * 4;

	switch (idx % 6) {
	case 0:
		FUNC10(FUNC0(port), reg1->config);
		break;
	case 1:
		FUNC10(FUNC1(port), reg1->config);
		break;
	case 2:
	case 3:
		FUNC10(FUNC2(port),
			FUNC9(box, 2 + (idx / 6) * 5));
		break;
	case 4:
		FUNC10(FUNC5(port),
			hwc->config >> 32);
		FUNC10(FUNC4(port), reg1->config);
		FUNC10(FUNC3(port), reg2->config);
		break;
	case 5:
		FUNC10(FUNC8(port),
			hwc->config >> 32);
		FUNC10(FUNC7(port), reg1->config);
		FUNC10(FUNC6(port), reg2->config);
		break;
	}

	FUNC10(hwc->config_base, NHMEX_PMON_CTL_EN_BIT0 |
		(hwc->config & NHMEX_R_PMON_CTL_EV_SEL_MASK));
}