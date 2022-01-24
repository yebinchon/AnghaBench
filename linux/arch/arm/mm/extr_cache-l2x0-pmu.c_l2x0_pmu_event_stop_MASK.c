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
struct hw_perf_event {int state; int /*<<< orphan*/  idx; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct hw_perf_event *hw = &event->hw;

	if (FUNC0(event->hw.state & PERF_HES_STOPPED))
		return;

	FUNC1(hw->idx);

	hw->state |= PERF_HES_STOPPED;

	if (flags & PERF_EF_UPDATE) {
		FUNC2(event);
		hw->state |= PERF_HES_UPTODATE;
	}
}