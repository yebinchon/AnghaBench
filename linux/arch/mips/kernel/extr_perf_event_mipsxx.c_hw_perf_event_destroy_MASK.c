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
struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ num_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  active_events ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ mipspmu ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  pmu_reserve_mutex ; 
 int /*<<< orphan*/  reset_counters ; 

__attribute__((used)) static void FUNC4(struct perf_event *event)
{
	if (FUNC0(&active_events,
				&pmu_reserve_mutex)) {
		/*
		 * We must not call the destroy function with interrupts
		 * disabled.
		 */
		FUNC3(reset_counters,
			(void *)(long)mipspmu.num_counters, 1);
		FUNC1();
		FUNC2(&pmu_reserve_mutex);
	}
}