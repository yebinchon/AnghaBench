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
typedef  scalar_t__ u64 ;
struct hw_perf_event {int /*<<< orphan*/  idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event)
{
	struct hw_perf_event *hw = &event->hw;
	u64 prev_count, new_count, mask;

	do {
		 prev_count = FUNC3(&hw->prev_count);
		 new_count = FUNC1(hw->idx);
	} while (FUNC4(&hw->prev_count, new_count) != prev_count);

	mask = FUNC0(31, 0);
	FUNC2((new_count - prev_count) & mask, &event->count);

	FUNC5(new_count);
}