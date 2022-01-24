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
struct cpuinfo_mips {unsigned int globalnumber; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CPU_MIPSR6 ; 
 int /*<<< orphan*/  CONFIG_MIPS_MT_SMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MIPS_GLOBALNUMBER_VP ; 
 unsigned int MIPS_GLOBALNUMBER_VP_SHF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct cpuinfo_mips *cpuinfo, unsigned int vpe)
{
	/* Ensure the VP(E) ID fits in the field */
	FUNC1(vpe > (MIPS_GLOBALNUMBER_VP >> MIPS_GLOBALNUMBER_VP_SHF));

	/* Ensure we're not using VP(E)s without support */
	FUNC1(vpe && !FUNC0(CONFIG_MIPS_MT_SMP) &&
		!FUNC0(CONFIG_CPU_MIPSR6));

	cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_VP;
	cpuinfo->globalnumber |= vpe << MIPS_GLOBALNUMBER_VP_SHF;
}