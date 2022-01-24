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
typedef  scalar_t__ u32 ;
struct nlm_soc_info {int coremask; int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_CPU_READY ; 
 unsigned int NLM_THREADS_PER_CORE ; 
 unsigned int NR_CPUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  nlm_cpumask ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nlm_soc_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  nlm_rmiboot_preboot ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(void)
{
	struct nlm_soc_info *nodep;
	unsigned int i, j, boot_cpu;
	volatile u32 *cpu_ready = FUNC3(BOOT_CPU_READY);

	/*
	 *  In case of RMI boot, hit with NMI to get the cores
	 *  from bootloader to linux code.
	 */
	nodep = FUNC4(0);
	boot_cpu = FUNC1();
	FUNC6(nlm_rmiboot_preboot);
	for (i = 0; i < NR_CPUS; i++) {
		if (i == boot_cpu || !FUNC0(i, &nlm_cpumask))
			continue;
		FUNC5(nodep->picbase, i, 1, 1); /* send NMI */
	}

	/* Fill up the coremask early */
	nodep->coremask = 1;
	for (i = 1; i < FUNC2(); i++) {
		for (j = 1000000; j > 0; j--) {
			if (cpu_ready[i * NLM_THREADS_PER_CORE])
				break;
			FUNC8(10);
		}
		if (j != 0)
			nodep->coremask |= (1u << i);
		else
			FUNC7("Failed to wakeup core %d\n", i);
	}

	return 0;
}