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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,int /*<<< orphan*/ ) ; 

void FUNC11(struct mm_struct *mm, pgd_t *pgd)
{
	pmd_t *pmd;
	pgtable_t pte;

	if (!pgd)
		return;

	/* pgd is always present and good */
	pmd = FUNC8(pgd, 0);
	if (FUNC7(*pmd))
		goto free;
	if (FUNC4(*pmd)) {
		FUNC3(*pmd);
		FUNC5(pmd);
		goto free;
	}

	pte = FUNC9(*pmd);
	FUNC5(pmd);
	FUNC10(mm, pte);
	FUNC2(mm);
	FUNC6(mm, pmd);
	FUNC1(mm);
free:
	FUNC0((unsigned long) pgd, 0);
}