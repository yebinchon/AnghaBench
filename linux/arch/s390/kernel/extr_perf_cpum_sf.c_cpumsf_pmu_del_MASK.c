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
struct perf_event {int /*<<< orphan*/  pmu; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {scalar_t__ ed; scalar_t__ es; } ;
struct cpu_hw_sf {int /*<<< orphan*/  handle; int /*<<< orphan*/ * event; int /*<<< orphan*/  flags; TYPE_1__ lsctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  PMU_F_IN_USE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_hw_sf ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cpu_hw_sf* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int flags)
{
	struct cpu_hw_sf *cpuhw = FUNC6(&cpu_hw_sf);

	FUNC4(event->pmu);
	FUNC2(event, PERF_EF_UPDATE);

	cpuhw->lsctl.es = 0;
	cpuhw->lsctl.ed = 0;
	cpuhw->flags &= ~PMU_F_IN_USE;
	cpuhw->event = NULL;

	if (FUNC0(&event->hw))
		FUNC1(&cpuhw->handle);
	FUNC3(event);
	FUNC5(event->pmu);
}