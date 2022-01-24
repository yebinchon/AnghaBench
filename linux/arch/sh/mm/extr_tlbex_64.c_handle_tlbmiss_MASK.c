#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 unsigned long TASK_SIZE ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(unsigned long long protection_flags,
			  unsigned long address)
{
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	pte_t entry;

	if (FUNC0((void *)address)) {
		pgd = FUNC2(address);
	} else {
		if (FUNC13(address >= TASK_SIZE || !current->mm))
			return 1;

		pgd = FUNC1(current->mm, address);
	}

	pud = FUNC11(pgd, address);
	if (FUNC10(*pud) || !FUNC12(*pud))
		return 1;

	pmd = FUNC4(pud, address);
	if (FUNC3(*pmd) || !FUNC5(*pmd))
		return 1;

	pte = FUNC7(pmd, address);
	entry = *pte;
	if (FUNC6(entry) || !FUNC8(entry))
		return 1;

	/*
	 * If the page doesn't have sufficient protection bits set to
	 * service the kind of fault being handled, there's not much
	 * point doing the TLB refill.  Punt the fault to the general
	 * handler.
	 */
	if ((FUNC9(entry) & protection_flags) != protection_flags)
		return 1;

	FUNC14(NULL, address, pte);

	return 0;
}