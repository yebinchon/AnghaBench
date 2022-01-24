#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ asid_cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  mm; int /*<<< orphan*/ * active_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAUSEB_IP ; 
 scalar_t__ CAUSEB_TI ; 
 int CP0_LEGACY_COMPARE_IRQ ; 
 scalar_t__ CP0_LEGACY_PERFCNT_IRQ ; 
 int INTCTLB_IPFDC ; 
 int INTCTLB_IPPCI ; 
 int INTCTLB_IPTI ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int cp0_compare_irq ; 
 scalar_t__ cp0_compare_irq_shift ; 
 int cp0_fdc_irq ; 
 int cp0_perfcount_irq ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* cpu_data ; 
 scalar_t__ cpu_has_mips_r2_r6 ; 
 scalar_t__ cpu_has_mmid ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(bool is_boot_cpu)
{
	unsigned int cpu = FUNC10();

	FUNC5();
	FUNC4();

	FUNC3();

	/*
	 * Before R2 both interrupt numbers were fixed to 7, so on R2 only:
	 *
	 *  o read IntCtl.IPTI to determine the timer interrupt
	 *  o read IntCtl.IPPCI to determine the performance counter interrupt
	 *  o read IntCtl.IPFDC to determine the fast debug channel interrupt
	 */
	if (cpu_has_mips_r2_r6) {
		cp0_compare_irq_shift = CAUSEB_TI - CAUSEB_IP;
		cp0_compare_irq = (FUNC9() >> INTCTLB_IPTI) & 7;
		cp0_perfcount_irq = (FUNC9() >> INTCTLB_IPPCI) & 7;
		cp0_fdc_irq = (FUNC9() >> INTCTLB_IPFDC) & 7;
		if (!cp0_fdc_irq)
			cp0_fdc_irq = -1;

	} else {
		cp0_compare_irq = CP0_LEGACY_COMPARE_IRQ;
		cp0_compare_irq_shift = CP0_LEGACY_PERFCNT_IRQ;
		cp0_perfcount_irq = -1;
		cp0_fdc_irq = -1;
	}

	if (cpu_has_mmid)
		cpu_data[cpu].asid_cache = 0;
	else if (!cpu_data[cpu].asid_cache)
		cpu_data[cpu].asid_cache = FUNC2(cpu);

	FUNC8(&init_mm);
	current->active_mm = &init_mm;
	FUNC0(current->mm);
	FUNC7(&init_mm, current);

	/* Boot CPU's cache setup in setup_arch(). */
	if (!is_boot_cpu)
		FUNC6();
	FUNC11();
	FUNC1();
}