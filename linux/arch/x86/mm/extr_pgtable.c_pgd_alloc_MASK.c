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
struct mm_struct {int /*<<< orphan*/ * pgd; } ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int MAX_PREALLOCATED_PMDS ; 
 int MAX_PREALLOCATED_USER_PMDS ; 
 int /*<<< orphan*/  PREALLOCATED_PMDS ; 
 int /*<<< orphan*/  PREALLOCATED_USER_PMDS ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pgd_lock ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (struct mm_struct*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

pgd_t *FUNC10(struct mm_struct *mm)
{
	pgd_t *pgd;
	pmd_t *u_pmds[MAX_PREALLOCATED_USER_PMDS];
	pmd_t *pmds[MAX_PREALLOCATED_PMDS];

	pgd = FUNC0();

	if (pgd == NULL)
		goto out;

	mm->pgd = pgd;

	if (FUNC7(mm, pmds, PREALLOCATED_PMDS) != 0)
		goto out_free_pgd;

	if (FUNC7(mm, u_pmds, PREALLOCATED_USER_PMDS) != 0)
		goto out_free_pmds;

	if (FUNC3(mm) != 0)
		goto out_free_user_pmds;

	/*
	 * Make sure that pre-populating the pmds is atomic with
	 * respect to anything walking the pgd_list, so that they
	 * never see a partially populated pgd.
	 */
	FUNC8(&pgd_lock);

	FUNC4(mm, pgd);
	FUNC5(mm, pgd, pmds);
	FUNC6(mm, pgd, u_pmds);

	FUNC9(&pgd_lock);

	return pgd;

out_free_user_pmds:
	FUNC2(mm, u_pmds, PREALLOCATED_USER_PMDS);
out_free_pmds:
	FUNC2(mm, pmds, PREALLOCATED_PMDS);
out_free_pgd:
	FUNC1(pgd);
out:
	return NULL;
}