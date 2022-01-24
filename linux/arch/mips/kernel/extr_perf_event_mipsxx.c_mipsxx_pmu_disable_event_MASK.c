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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_1__ mipspmu ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct cpu_hw_events* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(int idx)
{
	struct cpu_hw_events *cpuc = FUNC5(&cpu_hw_events);
	unsigned long flags;

	FUNC0(idx < 0 || idx >= mipspmu.num_counters);

	FUNC2(flags);
	cpuc->saved_ctrl[idx] = FUNC3(idx) &
		~M_PERFCTL_COUNT_EVENT_WHENEVER;
	FUNC4(idx, cpuc->saved_ctrl[idx]);
	FUNC1(flags);
}