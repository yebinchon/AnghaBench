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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int KERNEL_PGD_BOUNDARY ; 
 int PREALLOCATED_PMDS ; 
 int PTRS_PER_PMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * swapper_pg_dir ; 

__attribute__((used)) static void FUNC5(struct mm_struct *mm, pgd_t *pgd, pmd_t *pmds[])
{
	p4d_t *p4d;
	pud_t *pud;
	int i;

	if (PREALLOCATED_PMDS == 0) /* Work around gcc-3.4.x bug */
		return;

	p4d = FUNC1(pgd, 0);
	pud = FUNC3(p4d, 0);

	for (i = 0; i < PREALLOCATED_PMDS; i++, pud++) {
		pmd_t *pmd = pmds[i];

		if (i >= KERNEL_PGD_BOUNDARY)
			FUNC0(pmd, (pmd_t *)FUNC2(swapper_pg_dir[i]),
			       sizeof(pmd_t) * PTRS_PER_PMD);

		FUNC4(mm, pud, pmd);
	}
}