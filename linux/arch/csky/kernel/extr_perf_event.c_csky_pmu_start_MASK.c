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
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HPCNTENR ; 
 int /*<<< orphan*/  HPINTENR ; 
 int PERF_EF_RELOAD ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int flags)
{
	unsigned long flg;
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	if (FUNC1(idx == -1))
		return;

	if (flags & PERF_EF_RELOAD)
		FUNC1(!(hwc->state & PERF_HES_UPTODATE));

	hwc->state = 0;

	FUNC4(event);

	FUNC6(flg);

	FUNC3(HPINTENR, FUNC0(idx) | FUNC2(HPINTENR));
	FUNC3(HPCNTENR, FUNC0(idx) | FUNC2(HPCNTENR));

	FUNC5(flg);
}