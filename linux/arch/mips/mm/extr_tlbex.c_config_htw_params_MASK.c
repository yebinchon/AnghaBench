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
struct TYPE_2__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_64BIT ; 
 int CONFIG_PGTABLE_LEVELS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPS_CPU_HTW ; 
 int MIPS_PWCTL_PWEN_SHIFT ; 
 unsigned int MIPS_PWCTL_XU_MASK ; 
 unsigned long MIPS_PWFIELD_GDI_MASK ; 
 unsigned long MIPS_PWFIELD_GDI_SHIFT ; 
 unsigned long MIPS_PWFIELD_MDI_MASK ; 
 unsigned long MIPS_PWFIELD_MDI_SHIFT ; 
 unsigned long MIPS_PWFIELD_PTEI_MASK ; 
 unsigned long MIPS_PWFIELD_PTEI_SHIFT ; 
 unsigned long MIPS_PWFIELD_PTI_MASK ; 
 unsigned long MIPS_PWFIELD_PTI_SHIFT ; 
 unsigned long MIPS_PWSIZE_GDW_SHIFT ; 
 unsigned long MIPS_PWSIZE_MDW_SHIFT ; 
 unsigned long MIPS_PWSIZE_PS_MASK ; 
 unsigned long MIPS_PWSIZE_PTEW_MASK ; 
 unsigned long MIPS_PWSIZE_PTEW_SHIFT ; 
 unsigned long MIPS_PWSIZE_PTW_SHIFT ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PGDIR_SHIFT ; 
 unsigned long PGD_T_LOG2 ; 
 unsigned long PMD_SHIFT ; 
 unsigned long PTE_T_LOG2 ; 
 int /*<<< orphan*/  PTRS_PER_PGD ; 
 int /*<<< orphan*/  PTRS_PER_PMD ; 
 int /*<<< orphan*/  PTRS_PER_PTE ; 
 unsigned long _PAGE_GLOBAL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ current_cpu_data ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

__attribute__((used)) static void FUNC10(void)
{
	unsigned long pwfield, pwsize, ptei;
	unsigned int config;

	/*
	 * We are using 2-level page tables, so we only need to
	 * setup GDW and PTW appropriately. UDW and MDW will remain 0.
	 * The default value of GDI/UDI/MDI/PTI is 0xc. It is illegal to
	 * write values less than 0xc in these fields because the entire
	 * write will be dropped. As a result of which, we must preserve
	 * the original reset values and overwrite only what we really want.
	 */

	pwfield = FUNC6();
	/* re-initialize the GDI field */
	pwfield &= ~MIPS_PWFIELD_GDI_MASK;
	pwfield |= PGDIR_SHIFT << MIPS_PWFIELD_GDI_SHIFT;
	/* re-initialize the PTI field including the even/odd bit */
	pwfield &= ~MIPS_PWFIELD_PTI_MASK;
	pwfield |= PAGE_SHIFT << MIPS_PWFIELD_PTI_SHIFT;
	if (CONFIG_PGTABLE_LEVELS >= 3) {
		pwfield &= ~MIPS_PWFIELD_MDI_MASK;
		pwfield |= PMD_SHIFT << MIPS_PWFIELD_MDI_SHIFT;
	}
	/* Set the PTEI right shift */
	ptei = _PAGE_GLOBAL_SHIFT << MIPS_PWFIELD_PTEI_SHIFT;
	pwfield |= ptei;
	FUNC8(pwfield);
	/* Check whether the PTEI value is supported */
	FUNC1();
	pwfield = FUNC6();
	if (((pwfield & MIPS_PWFIELD_PTEI_MASK) << MIPS_PWFIELD_PTEI_SHIFT)
		!= ptei) {
		FUNC4("Unsupported PTEI field value: 0x%lx. HTW will not be enabled",
			ptei);
		/*
		 * Drop option to avoid HTW being enabled via another path
		 * (eg htw_reset())
		 */
		current_cpu_data.options &= ~MIPS_CPU_HTW;
		return;
	}

	pwsize = FUNC2(PTRS_PER_PGD) << MIPS_PWSIZE_GDW_SHIFT;
	pwsize |= FUNC2(PTRS_PER_PTE) << MIPS_PWSIZE_PTW_SHIFT;
	if (CONFIG_PGTABLE_LEVELS >= 3)
		pwsize |= FUNC2(PTRS_PER_PMD) << MIPS_PWSIZE_MDW_SHIFT;

	/* Set pointer size to size of directory pointers */
	if (FUNC0(CONFIG_64BIT))
		pwsize |= MIPS_PWSIZE_PS_MASK;
	/* PTEs may be multiple pointers long (e.g. with XPA) */
	pwsize |= ((PTE_T_LOG2 - PGD_T_LOG2) << MIPS_PWSIZE_PTEW_SHIFT)
			& MIPS_PWSIZE_PTEW_MASK;

	FUNC9(pwsize);

	/* Make sure everything is set before we enable the HTW */
	FUNC1();

	/*
	 * Enable HTW (and only for XUSeg on 64-bit), and disable the rest of
	 * the pwctl fields.
	 */
	config = 1 << MIPS_PWCTL_PWEN_SHIFT;
	if (FUNC0(CONFIG_64BIT))
		config |= MIPS_PWCTL_XU_MASK;
	FUNC7(config);
	FUNC3("Hardware Page Table Walker enabled\n");

	FUNC5();
}