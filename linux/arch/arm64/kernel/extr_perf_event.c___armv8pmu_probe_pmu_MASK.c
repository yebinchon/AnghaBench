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
typedef  int u64 ;
typedef  int u32 ;
struct armv8pmu_probe_info {int present; struct arm_pmu* pmu; } ;
struct arm_pmu {int num_events; int /*<<< orphan*/  pmceid_ext_bitmap; int /*<<< orphan*/  pmceid_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARMV8_PMUV3_MAX_COMMON_EVENTS ; 
 int ARMV8_PMU_PMCR_N_MASK ; 
 int ARMV8_PMU_PMCR_N_SHIFT ; 
 int /*<<< orphan*/  ID_AA64DFR0_PMUVER_SHIFT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_aa64dfr0_el1 ; 
 int /*<<< orphan*/  pmceid0_el0 ; 
 int /*<<< orphan*/  pmceid1_el0 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *info)
{
	struct armv8pmu_probe_info *probe = info;
	struct arm_pmu *cpu_pmu = probe->pmu;
	u64 dfr0;
	u64 pmceid_raw[2];
	u32 pmceid[2];
	int pmuver;

	dfr0 = FUNC3(id_aa64dfr0_el1);
	pmuver = FUNC2(dfr0,
			ID_AA64DFR0_PMUVER_SHIFT);
	if (pmuver == 0xf || pmuver == 0)
		return;

	probe->present = true;

	/* Read the nb of CNTx counters supported from PMNC */
	cpu_pmu->num_events = (FUNC0() >> ARMV8_PMU_PMCR_N_SHIFT)
		& ARMV8_PMU_PMCR_N_MASK;

	/* Add the CPU cycles counter */
	cpu_pmu->num_events += 1;

	pmceid[0] = pmceid_raw[0] = FUNC3(pmceid0_el0);
	pmceid[1] = pmceid_raw[1] = FUNC3(pmceid1_el0);

	FUNC1(cpu_pmu->pmceid_bitmap,
			     pmceid, ARMV8_PMUV3_MAX_COMMON_EVENTS);

	pmceid[0] = pmceid_raw[0] >> 32;
	pmceid[1] = pmceid_raw[1] >> 32;

	FUNC1(cpu_pmu->pmceid_ext_bitmap,
			     pmceid, ARMV8_PMUV3_MAX_COMMON_EVENTS);
}