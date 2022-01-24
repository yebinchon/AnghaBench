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
struct TYPE_2__ {unsigned long* pmc_count_shift; unsigned long* pmc_count_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERFMON_CMD_READ ; 
 TYPE_1__* alpha_pmu ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	unsigned long flags;
	unsigned long pcr;
	int pcr0, pcr1;
	int cpu;

	if (!FUNC4())
		return;

	FUNC1(flags);

	cpu = FUNC3();

	pcr = FUNC5(PERFMON_CMD_READ, 0);
	pcr0 = (pcr >> alpha_pmu->pmc_count_shift[0]) & alpha_pmu->pmc_count_mask[0];
	pcr1 = (pcr >> alpha_pmu->pmc_count_shift[1]) & alpha_pmu->pmc_count_mask[1];

	FUNC2("CPU#%d: PCTR0[%06x] PCTR1[%06x]\n", cpu, pcr0, pcr1);

	FUNC0(flags);
}