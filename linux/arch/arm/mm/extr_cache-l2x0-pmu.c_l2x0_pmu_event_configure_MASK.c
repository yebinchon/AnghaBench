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
struct hw_perf_event {int /*<<< orphan*/  idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct perf_event *event)
{
	struct hw_perf_event *hw = &event->hw;

	/*
	 * The L2X0 counters saturate at 0xffffffff rather than wrapping, so we
	 * will *always* lose some number of events when a counter saturates,
	 * and have no way of detecting how many were lost.
	 *
	 * To minimize the impact of this, we try to maximize the period by
	 * always starting counters at zero. To ensure that group ratios are
	 * representative, we poll periodically to avoid counters saturating.
	 * See l2x0_pmu_poll().
	 */
	FUNC1(&hw->prev_count, 0);
	FUNC0(hw->idx, 0);
}