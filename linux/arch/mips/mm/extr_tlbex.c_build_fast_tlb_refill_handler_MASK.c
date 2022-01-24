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
typedef  int /*<<< orphan*/  u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
struct mips_huge_tlb_info {int huge_pte; int restore_scratch; int need_reload_pte; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  C0_BADVADDR ; 
 int /*<<< orphan*/  C0_CONTEXT ; 
 int /*<<< orphan*/  C0_ENTRYLO0 ; 
 int /*<<< orphan*/  C0_ENTRYLO1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int) ; 
 unsigned int LOC_PTEP ; 
 int PAGE_SHIFT ; 
 int PGDIR_SHIFT ; 
 int PGD_ORDER ; 
 int PMD_SHIFT ; 
 int PTRS_PER_PGD ; 
 int PTRS_PER_PMD ; 
 int PTRS_PER_PUD ; 
 int PUD_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int const,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int const,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int const,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int const,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PAGE_GLOBAL ; 
 int /*<<< orphan*/  _PAGE_HUGE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,struct uasm_label**,struct uasm_reloc**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ check_for_high_segbits ; 
 scalar_t__ cpu_has_rixi ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  label_tlb_huge_update ; 
 int /*<<< orphan*/  label_vmalloc ; 
 int pgd_reg ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlb_random ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,unsigned int,unsigned int,int const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int const,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,struct uasm_reloc**,int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **,struct uasm_reloc**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,struct uasm_reloc**,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct uasm_label**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct uasm_label**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 () ; 

__attribute__((used)) static struct mips_huge_tlb_info
FUNC29 (u32 **p, struct uasm_label **l,
			       struct uasm_reloc **r, unsigned int tmp,
			       unsigned int ptr, int c0_scratch_reg)
{
	struct mips_huge_tlb_info rv;
	unsigned int even, odd;
	int vmalloc_branch_delay_filled = 0;
	const int scratch = 1; /* Our extra working register */

	rv.huge_pte = scratch;
	rv.restore_scratch = 0;
	rv.need_reload_pte = false;

	if (check_for_high_segbits) {
		FUNC5(p, tmp, C0_BADVADDR);

		if (pgd_reg != -1)
			FUNC5(p, ptr, FUNC10(), pgd_reg);
		else
			FUNC5(p, ptr, C0_CONTEXT);

		if (c0_scratch_reg >= 0)
			FUNC6(p, scratch, FUNC10(), c0_scratch_reg);
		else
			FUNC7(p, scratch, FUNC12(0), 0);

		FUNC17(p, scratch, tmp,
				 PGDIR_SHIFT + PGD_ORDER + PAGE_SHIFT - 3);
		FUNC25(p, r, scratch, label_vmalloc);

		if (pgd_reg == -1) {
			vmalloc_branch_delay_filled = 1;
			/* Clear lower 23 bits of context. */
			FUNC15(p, ptr, 0, 0, 23);
		}
	} else {
		if (pgd_reg != -1)
			FUNC5(p, ptr, FUNC10(), pgd_reg);
		else
			FUNC5(p, ptr, C0_CONTEXT);

		FUNC5(p, tmp, C0_BADVADDR);

		if (c0_scratch_reg >= 0)
			FUNC6(p, scratch, FUNC10(), c0_scratch_reg);
		else
			FUNC7(p, scratch, FUNC12(0), 0);

		if (pgd_reg == -1)
			/* Clear lower 23 bits of context. */
			FUNC15(p, ptr, 0, 0, 23);

		FUNC24(p, r, tmp, label_vmalloc);
	}

	if (pgd_reg == -1) {
		vmalloc_branch_delay_filled = 1;
		/* 1 0	1 0 1  << 6  xkphys cached */
		FUNC22(p, ptr, ptr, 0x540);
		FUNC16(p, ptr, ptr, 11);
	}

#ifdef __PAGETABLE_PMD_FOLDED
#define LOC_PTEP scratch
#else
#define LOC_PTEP ptr
#endif

	if (!vmalloc_branch_delay_filled)
		/* get pgd offset in bytes */
		FUNC17(p, scratch, tmp, PGDIR_SHIFT - 3);

	FUNC27(l, *p);

	/*
	 *			   tmp		ptr
	 * fall-through case =	 badvaddr  *pgd_current
	 * vmalloc case	     =	 badvaddr  swapper_pg_dir
	 */

	if (vmalloc_branch_delay_filled)
		/* get pgd offset in bytes */
		FUNC17(p, scratch, tmp, PGDIR_SHIFT - 3);

#ifdef __PAGETABLE_PMD_FOLDED
	GET_CONTEXT(p, tmp); /* get context reg */
#endif
	FUNC13(p, scratch, scratch, (PTRS_PER_PGD - 1) << 3);

	if (FUNC28()) {
		FUNC4(p, LOC_PTEP, scratch, ptr);
	} else {
		FUNC14(p, ptr, ptr, scratch); /* add in pgd offset */
		FUNC20(p, LOC_PTEP, 0, ptr); /* get pmd pointer */
	}

#ifndef __PAGETABLE_PUD_FOLDED
	/* get pud offset in bytes */
	FUNC17(p, scratch, tmp, PUD_SHIFT - 3);
	FUNC13(p, scratch, scratch, (PTRS_PER_PUD - 1) << 3);

	if (FUNC28()) {
		FUNC4(p, ptr, scratch, ptr);
	} else {
		FUNC14(p, ptr, ptr, scratch); /* add in pmd offset */
		FUNC3(p, ptr, 0, ptr);
	}
	/* ptr contains a pointer to PMD entry */
	/* tmp contains the address */
#endif

#ifndef __PAGETABLE_PMD_FOLDED
	/* get pmd offset in bytes */
	FUNC17(p, scratch, tmp, PMD_SHIFT - 3);
	FUNC13(p, scratch, scratch, (PTRS_PER_PMD - 1) << 3);
	FUNC0(p, tmp); /* get context reg */

	if (FUNC28()) {
		FUNC4(p, scratch, scratch, ptr);
	} else {
		FUNC14(p, ptr, ptr, scratch); /* add in pmd offset */
		FUNC3(p, scratch, 0, ptr);
	}
#endif
	/* Adjust the context during the load latency. */
	FUNC8(p, tmp);

#ifdef CONFIG_MIPS_HUGE_TLB_SUPPORT
	uasm_il_bbit1(p, r, scratch, ilog2(_PAGE_HUGE), label_tlb_huge_update);
	/*
	 * The in the LWX case we don't want to do the load in the
	 * delay slot.	It cannot issue in the same cycle and may be
	 * speculative and unneeded.
	 */
	if (use_lwx_insns())
		uasm_i_nop(p);
#endif /* CONFIG_MIPS_HUGE_TLB_SUPPORT */


	/* build_update_entries */
	if (FUNC28()) {
		even = ptr;
		odd = tmp;
		FUNC4(p, even, scratch, tmp);
		FUNC1(p, tmp, tmp, sizeof(pte_t));
		FUNC4(p, odd, scratch, tmp);
	} else {
		FUNC2(p, ptr, scratch, tmp); /* add in offset */
		even = tmp;
		odd = ptr;
		FUNC3(p, even, 0, ptr); /* get even pte */
		FUNC3(p, odd, sizeof(pte_t), ptr); /* get odd pte */
	}
	if (cpu_has_rixi) {
		FUNC16(p, even, even, FUNC11(_PAGE_GLOBAL));
		FUNC6(p, even, C0_ENTRYLO0); /* load it */
		FUNC16(p, odd, odd, FUNC11(_PAGE_GLOBAL));
	} else {
		FUNC17(p, even, even, FUNC11(_PAGE_GLOBAL));
		FUNC6(p, even, C0_ENTRYLO0); /* load it */
		FUNC17(p, odd, odd, FUNC11(_PAGE_GLOBAL));
	}
	FUNC6(p, odd, C0_ENTRYLO1); /* load it */

	if (c0_scratch_reg >= 0) {
		FUNC18(p);
		FUNC5(p, scratch, FUNC10(), c0_scratch_reg);
		FUNC9(p, l, r, tlb_random);
		FUNC26(l, *p);
		rv.restore_scratch = 1;
	} else if (PAGE_SHIFT == 14 || PAGE_SHIFT == 13)  {
		FUNC9(p, l, r, tlb_random);
		FUNC26(l, *p);
		FUNC3(p, scratch, FUNC12(0), 0);
	} else {
		FUNC3(p, scratch, FUNC12(0), 0);
		FUNC9(p, l, r, tlb_random);
		FUNC26(l, *p);
		rv.restore_scratch = 1;
	}

	FUNC19(p); /* return from trap */

	return rv;
}