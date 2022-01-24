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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ PGDIR_SIZE ; 
 int PMD_TYPE_MASK ; 
 int PMD_TYPE_TABLE ; 
 int SZ_4M ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long virt, unsigned long size)
{
	unsigned long addr = virt, end = virt + (size & ~(SZ_4M - 1));
	pgd_t *pgd;

	FUNC0(addr, end);
	pgd = FUNC2(addr);
	do {
		pmd_t pmd, *pmdp = FUNC5((pud_t *)pgd, addr);

		pmd = *pmdp;
		if (!FUNC4(pmd)) {
			/*
			 * Clear the PMD from the page table, and
			 * increment the kvm sequence so others
			 * notice this change.
			 *
			 * Note: this is still racy on SMP machines.
			 */
			FUNC3(pmdp);

			/*
			 * Free the page table, if there was one.
			 */
			if ((FUNC7(pmd) & PMD_TYPE_MASK) == PMD_TYPE_TABLE)
				FUNC8(&init_mm, FUNC6(pmd));
		}

		addr += PGDIR_SIZE;
		pgd++;
	} while (addr < end);

	FUNC1(virt, end);
}