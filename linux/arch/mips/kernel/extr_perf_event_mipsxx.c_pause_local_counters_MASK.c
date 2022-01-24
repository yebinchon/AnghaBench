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
struct cpu_hw_events {int* saved_ctrl; } ;
struct TYPE_2__ {int num_counters; } ;

/* Variables and functions */
 int M_PERFCTL_COUNT_EVENT_WHENEVER ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__ mipspmu ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	int ctr = mipspmu.num_counters;
	unsigned long flags;

	FUNC1(flags);
	do {
		ctr--;
		cpuc->saved_ctrl[ctr] = FUNC2(ctr);
		FUNC3(ctr, cpuc->saved_ctrl[ctr] &
					 ~M_PERFCTL_COUNT_EVENT_WHENEVER);
	} while (ctr > 0);
	FUNC0(flags);
}