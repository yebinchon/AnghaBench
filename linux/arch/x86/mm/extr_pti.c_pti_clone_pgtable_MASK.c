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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;
typedef  enum pti_clone_level { ____Placeholder_pti_clone_level } pti_clone_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long PMD_MASK ; 
 scalar_t__ PMD_SIZE ; 
 int PTI_CLONE_PMD ; 
 int PTI_CLONE_PTE ; 
 unsigned long PUD_MASK ; 
 scalar_t__ PUD_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  X86_FEATURE_PGE ; 
 int /*<<< orphan*/  _PAGE_GLOBAL ; 
 int _PAGE_PRESENT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC18 (unsigned long) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC21 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void
FUNC22(unsigned long start, unsigned long end,
		  enum pti_clone_level level)
{
	unsigned long addr;

	/*
	 * Clone the populated PMDs which cover start to end. These PMD areas
	 * can have holes.
	 */
	for (addr = start; addr < end;) {
		pte_t *pte, *target_pte;
		pmd_t *pmd, *target_pmd;
		pgd_t *pgd;
		p4d_t *p4d;
		pud_t *pud;

		/* Overflow check */
		if (addr < start)
			break;

		pgd = FUNC7(addr);
		if (FUNC1(FUNC6(*pgd)))
			return;
		p4d = FUNC5(pgd, addr);
		if (FUNC1(FUNC4(*p4d)))
			return;

		pud = FUNC20(p4d, addr);
		if (FUNC19(*pud)) {
			FUNC2(addr & ~PUD_MASK);
			addr = FUNC21(addr + 1, PUD_SIZE);
			continue;
		}

		pmd = FUNC11(pud, addr);
		if (FUNC10(*pmd)) {
			FUNC2(addr & ~PMD_MASK);
			addr = FUNC21(addr + 1, PMD_SIZE);
			continue;
		}

		if (FUNC9(*pmd) || level == PTI_CLONE_PMD) {
			target_pmd = FUNC17(addr);
			if (FUNC1(!target_pmd))
				return;

			/*
			 * Only clone present PMDs.  This ensures only setting
			 * _PAGE_GLOBAL on present PMDs.  This should only be
			 * called on well-known addresses anyway, so a non-
			 * present PMD would be a surprise.
			 */
			if (FUNC1(!(FUNC8(*pmd) & _PAGE_PRESENT)))
				return;

			/*
			 * Setting 'target_pmd' below creates a mapping in both
			 * the user and kernel page tables.  It is effectively
			 * global, so set it as global in both copies.  Note:
			 * the X86_FEATURE_PGE check is not _required_ because
			 * the CPU ignores _PAGE_GLOBAL when PGE is not
			 * supported.  The check keeps consistentency with
			 * code that only set this bit when supported.
			 */
			if (FUNC3(X86_FEATURE_PGE))
				*pmd = FUNC12(*pmd, _PAGE_GLOBAL);

			/*
			 * Copy the PMD.  That is, the kernelmode and usermode
			 * tables will share the last-level page tables of this
			 * address range
			 */
			*target_pmd = *pmd;

			addr += PMD_SIZE;

		} else if (level == PTI_CLONE_PTE) {

			/* Walk the page-table down to the pte level */
			pte = FUNC15(pmd, addr);
			if (FUNC14(*pte)) {
				addr += PAGE_SIZE;
				continue;
			}

			/* Only clone present PTEs */
			if (FUNC1(!(FUNC13(*pte) & _PAGE_PRESENT)))
				return;

			/* Allocate PTE in the user page-table */
			target_pte = FUNC18(addr);
			if (FUNC1(!target_pte))
				return;

			/* Set GLOBAL bit in both PTEs */
			if (FUNC3(X86_FEATURE_PGE))
				*pte = FUNC16(*pte, _PAGE_GLOBAL);

			/* Clone the PTE */
			*target_pte = *pte;

			addr += PAGE_SIZE;

		} else {
			FUNC0();
		}
	}
}