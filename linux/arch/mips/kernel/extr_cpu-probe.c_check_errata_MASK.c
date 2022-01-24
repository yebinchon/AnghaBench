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
struct cpuinfo_mips {int processor_id; } ;

/* Variables and functions */
#define  CPU_34K 128 
 int MIPS_CONF7_RPS ; 
 int PRID_REV_34K_V1_0_2 ; 
 int PRID_REV_MASK ; 
 struct cpuinfo_mips current_cpu_data ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(void)
{
	struct cpuinfo_mips *c = &current_cpu_data;

	switch (FUNC0()) {
	case CPU_34K:
		/*
		 * Erratum "RPS May Cause Incorrect Instruction Execution"
		 * This code only handles VPE0, any SMP/RTOS code
		 * making use of VPE1 will be responsable for that VPE.
		 */
		if ((c->processor_id & PRID_REV_MASK) <= PRID_REV_34K_V1_0_2)
			FUNC2(FUNC1() | MIPS_CONF7_RPS);
		break;
	default:
		break;
	}
}