#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef  int /*<<< orphan*/  pud_t ;
struct TYPE_6__ {unsigned long pte_high; int pte_low; } ;
typedef  TYPE_1__ pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_7__ {scalar_t__ active_mm; } ;

/* Variables and functions */
 int HPAGE_SIZE ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PM_DEFAULT_MASK ; 
 int /*<<< orphan*/  PM_HUGE_MASK ; 
 int _PFNX_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ cpu_has_mmid ; 
 scalar_t__ cpu_has_xpa ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC11 (unsigned long) ; 
 unsigned long FUNC12 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 

void FUNC27(struct vm_area_struct * vma, unsigned long address, pte_t pte)
{
	unsigned long flags;
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;
	int idx, pid;

	/*
	 * Handle debugger faulting in for debugee.
	 */
	if (current->active_mm != vma->vm_mm)
		return;

	FUNC5(flags);

	FUNC3();
	address &= (PAGE_MASK << 1);
	if (cpu_has_mmid) {
		FUNC21(address);
	} else {
		pid = FUNC14() & FUNC0(&current_cpu_data);
		FUNC21(address | pid);
	}
	pgdp = FUNC7(vma->vm_mm, address);
	FUNC6();
	FUNC16();
	FUNC17();
	pudp = FUNC13(pgdp, address);
	pmdp = FUNC9(pudp, address);
	idx = FUNC15();
#ifdef CONFIG_MIPS_HUGE_TLB_SUPPORT
	/* this could be a huge page  */
	if (pmd_huge(*pmdp)) {
		unsigned long lo;
		write_c0_pagemask(PM_HUGE_MASK);
		ptep = (pte_t *)pmdp;
		lo = pte_to_entrylo(pte_val(*ptep));
		write_c0_entrylo0(lo);
		write_c0_entrylo1(lo + (HPAGE_SIZE >> 7));

		mtc0_tlbw_hazard();
		if (idx < 0)
			tlb_write_random();
		else
			tlb_write_indexed();
		tlbw_use_hazard();
		write_c0_pagemask(PM_DEFAULT_MASK);
	} else
#endif
	{
		ptep = FUNC10(pmdp, address);

#if defined(CONFIG_PHYS_ADDR_T_64BIT) && defined(CONFIG_CPU_MIPS32)
#ifdef CONFIG_XPA
		write_c0_entrylo0(pte_to_entrylo(ptep->pte_high));
		if (cpu_has_xpa)
			writex_c0_entrylo0(ptep->pte_low & _PFNX_MASK);
		ptep++;
		write_c0_entrylo1(pte_to_entrylo(ptep->pte_high));
		if (cpu_has_xpa)
			writex_c0_entrylo1(ptep->pte_low & _PFNX_MASK);
#else
		write_c0_entrylo0(ptep->pte_high);
		ptep++;
		write_c0_entrylo1(ptep->pte_high);
#endif
#else
		FUNC22(FUNC11(FUNC12(*ptep++)));
		FUNC23(FUNC11(FUNC12(*ptep)));
#endif
		FUNC6();
		if (idx < 0)
			FUNC19();
		else
			FUNC18();
	}
	FUNC20();
	FUNC2();
	FUNC1(vma);
	FUNC4(flags);
}