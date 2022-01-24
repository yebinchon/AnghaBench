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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int _PAGE_NX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_restore_code ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ relocated_restore_code ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC25(void)
{
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;

	relocated_restore_code = FUNC6(GFP_ATOMIC);
	if (!relocated_restore_code)
		return -ENOMEM;

	FUNC7((void *)relocated_restore_code, core_restore_code, PAGE_SIZE);

	/* Make the page containing the relocated code executable */
	pgd = (pgd_t *)FUNC5(FUNC20()) +
		FUNC11(relocated_restore_code);
	p4d = FUNC9(pgd, relocated_restore_code);
	if (FUNC8(*p4d)) {
		FUNC21(p4d, FUNC1(FUNC10(*p4d) & ~_PAGE_NX));
		goto out;
	}
	pud = FUNC18(p4d, relocated_restore_code);
	if (FUNC17(*pud)) {
		FUNC24(pud, FUNC4(FUNC19(*pud) & ~_PAGE_NX));
		goto out;
	}
	pmd = FUNC13(pud, relocated_restore_code);
	if (FUNC12(*pmd)) {
		FUNC22(pmd, FUNC2(FUNC14(*pmd) & ~_PAGE_NX));
		goto out;
	}
	pte = FUNC15(pmd, relocated_restore_code);
	FUNC23(pte, FUNC3(FUNC16(*pte) & ~_PAGE_NX));
out:
	FUNC0();
	return 0;
}