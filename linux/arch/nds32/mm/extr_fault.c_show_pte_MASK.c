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
struct mm_struct {int /*<<< orphan*/  pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HIGHMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mm_struct init_mm ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct mm_struct *mm, unsigned long addr)
{
	pgd_t *pgd;
	if (!mm)
		mm = &init_mm;

	FUNC9("pgd = %p\n", mm->pgd);
	pgd = FUNC3(mm, addr);
	FUNC9("[%08lx] *pgd=%08lx", addr, FUNC4(*pgd));

	do {
		pmd_t *pmd;

		if (FUNC2(*pgd))
			break;

		if (FUNC1(*pgd)) {
			FUNC9("(bad)");
			break;
		}

		pmd = FUNC7(pgd, addr);
#if PTRS_PER_PMD != 1
		FUNC9(", *pmd=%08lx", FUNC8(*pmd));
#endif

		if (FUNC6(*pmd))
			break;

		if (FUNC5(*pmd)) {
			FUNC9("(bad)");
			break;
		}

		if (FUNC0(CONFIG_HIGHMEM))
		{
			pte_t *pte;
			/* We must not map this if we have highmem enabled */
			pte = FUNC10(pmd, addr);
			FUNC9(", *pte=%08lx", FUNC12(*pte));
			FUNC11(pte);
		}
	} while (0);

	FUNC9("\n");
}