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
struct hw_perf_event {int idx; int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct arc_pmu_cpu {struct perf_event** act_counter; int /*<<< orphan*/ * used_mask; } ;
struct TYPE_2__ {int n_counters; int /*<<< orphan*/  max_period; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_REG_PCT_CONFIG ; 
 int /*<<< orphan*/  ARC_REG_PCT_COUNTH ; 
 int /*<<< orphan*/  ARC_REG_PCT_COUNTL ; 
 int /*<<< orphan*/  ARC_REG_PCT_INDEX ; 
 int /*<<< orphan*/  ARC_REG_PCT_INT_CNTH ; 
 int /*<<< orphan*/  ARC_REG_PCT_INT_CNTL ; 
 int EAGAIN ; 
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* arc_pmu ; 
 int /*<<< orphan*/  arc_pmu_cpu ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 struct arc_pmu_cpu* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct perf_event *event, int flags)
{
	struct arc_pmu_cpu *pmu_cpu = FUNC7(&arc_pmu_cpu);
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	idx = FUNC2(pmu_cpu->used_mask[0]);
	if (idx == arc_pmu->n_counters)
		return -EAGAIN;

	FUNC0(idx, pmu_cpu->used_mask);
	hwc->idx = idx;

	FUNC9(ARC_REG_PCT_INDEX, idx);

	pmu_cpu->act_counter[idx] = event;

	if (FUNC3(event)) {
		/* Mimic full counter overflow as other arches do */
		FUNC9(ARC_REG_PCT_INT_CNTL,
			      FUNC5(arc_pmu->max_period));
		FUNC9(ARC_REG_PCT_INT_CNTH,
			      FUNC8(arc_pmu->max_period));
	}

	FUNC9(ARC_REG_PCT_CONFIG, 0);
	FUNC9(ARC_REG_PCT_COUNTL, 0);
	FUNC9(ARC_REG_PCT_COUNTH, 0);
	FUNC4(&hwc->prev_count, 0);

	hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
	if (flags & PERF_EF_START)
		FUNC1(event, PERF_EF_RELOAD);

	FUNC6(event);

	return 0;
}