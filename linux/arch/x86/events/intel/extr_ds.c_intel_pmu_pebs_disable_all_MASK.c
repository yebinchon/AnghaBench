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
struct cpu_hw_events {scalar_t__ pebs_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_PEBS_ENABLE ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 struct cpu_hw_events* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	struct cpu_hw_events *cpuc = FUNC0(&cpu_hw_events);

	if (cpuc->pebs_enabled)
		FUNC1(MSR_IA32_PEBS_ENABLE, 0);
}