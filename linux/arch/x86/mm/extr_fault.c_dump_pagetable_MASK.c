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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static void FUNC22(unsigned long address)
{
	pgd_t *base = FUNC0(FUNC21());
	pgd_t *pgd = base + FUNC6(address);
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	if (FUNC1(pgd))
		goto bad;

	FUNC14("PGD %lx ", FUNC8(*pgd));

	if (!FUNC7(*pgd))
		goto out;

	p4d = FUNC3(pgd, address);
	if (FUNC1(p4d))
		goto bad;

	FUNC13("P4D %lx ", FUNC5(*p4d));
	if (!FUNC4(*p4d) || FUNC2(*p4d))
		goto out;

	pud = FUNC18(p4d, address);
	if (FUNC1(pud))
		goto bad;

	FUNC13("PUD %lx ", FUNC20(*pud));
	if (!FUNC19(*pud) || FUNC17(*pud))
		goto out;

	pmd = FUNC10(pud, address);
	if (FUNC1(pmd))
		goto bad;

	FUNC13("PMD %lx ", FUNC12(*pmd));
	if (!FUNC11(*pmd) || FUNC9(*pmd))
		goto out;

	pte = FUNC15(pmd, address);
	if (FUNC1(pte))
		goto bad;

	FUNC13("PTE %lx", FUNC16(*pte));
out:
	FUNC13("\n");
	return;
bad:
	FUNC14("BAD\n");
}