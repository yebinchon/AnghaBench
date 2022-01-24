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
struct cpu_hw_events {int /*<<< orphan*/  perf_ctr_virt_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD64_EVENTSEL_HOSTONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct cpu_hw_events* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	struct cpu_hw_events *cpuc = FUNC1(&cpu_hw_events);

	/*
	 * We only mask out the Host-only bit so that host-only counting works
	 * when SVM is disabled. If someone sets up a guest-only counter when
	 * SVM is disabled the Guest-only bits still gets set and the counter
	 * will not count anything.
	 */
	cpuc->perf_ctr_virt_mask = AMD64_EVENTSEL_HOSTONLY;

	/* Reload all events */
	FUNC0();
	FUNC2(0);
}