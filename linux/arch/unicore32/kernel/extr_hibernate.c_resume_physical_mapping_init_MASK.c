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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_KERNEL_EXEC ; 
 int /*<<< orphan*/  PAGE_OFFSET ; 
 int PTRS_PER_PGD ; 
 int PTRS_PER_PMD ; 
 int PTRS_PER_PTE ; 
 unsigned long max_low_pfn ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(pgd_t *pgd_base)
{
	unsigned long pfn;
	pgd_t *pgd;
	pmd_t *pmd;
	pte_t *pte;
	int pgd_idx, pmd_idx;

	pgd_idx = FUNC1(PAGE_OFFSET);
	pgd = pgd_base + pgd_idx;
	pfn = 0;

	for (; pgd_idx < PTRS_PER_PGD; pgd++, pgd_idx++) {
		pmd = FUNC2(pgd);
		if (!pmd)
			return -ENOMEM;

		if (pfn >= max_low_pfn)
			continue;

		for (pmd_idx = 0; pmd_idx < PTRS_PER_PMD; pmd++, pmd_idx++) {
			pte_t *max_pte;

			if (pfn >= max_low_pfn)
				break;

			/* Map with normal page tables.
			 * NOTE: We can mark everything as executable here
			 */
			pte = FUNC3(pmd);
			if (!pte)
				return -ENOMEM;

			max_pte = pte + PTRS_PER_PTE;
			for (; pte < max_pte; pte++, pfn++) {
				if (pfn >= max_low_pfn)
					break;

				FUNC4(pte, FUNC0(pfn, PAGE_KERNEL_EXEC));
			}
		}
	}

	return 0;
}