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
 int /*<<< orphan*/  PAGE_KERNEL_LARGE_EXEC ; 
 int PAGE_MASK ; 
 int PMD_MASK ; 
 int /*<<< orphan*/  X86_FEATURE_PSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int jump_address_phys ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  restore_jump_address ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(pgd_t *pgd_base)
{
	pgd_t *pgd;
	pmd_t *pmd;
	pte_t *pte;

	pgd = pgd_base + FUNC3(restore_jump_address);

	pmd = FUNC7(pgd);
	if (!pmd)
		return -ENOMEM;

	if (FUNC2(X86_FEATURE_PSE)) {
		FUNC9(pmd + FUNC5(restore_jump_address),
		FUNC0((jump_address_phys & PMD_MASK) | FUNC4(PAGE_KERNEL_LARGE_EXEC)));
	} else {
		pte = FUNC8(pmd);
		if (!pte)
			return -ENOMEM;
		FUNC10(pte + FUNC6(restore_jump_address),
		FUNC1((jump_address_phys & PAGE_MASK) | FUNC4(PAGE_KERNEL_EXEC)));
	}

	return 0;
}