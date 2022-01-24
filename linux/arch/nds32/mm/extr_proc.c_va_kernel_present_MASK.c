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
typedef  int pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int* FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(unsigned long addr)
{
	pmd_t *pmd;
	pte_t *ptep, pte;

	pmd = FUNC2(FUNC0(addr), addr);
	if (!FUNC1(*pmd)) {
		ptep = FUNC3(pmd, addr);
		pte = *ptep;
		if (FUNC4(pte))
			return pte;
	}
	return 0;
}