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

/* Variables and functions */
 int PTRS_PER_PMD ; 
 int FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(pmd_t *pmd, unsigned long start_gva,
				   unsigned long end_gva)
{
	pte_t *pte;
	unsigned long end = ~0ul;
	int i_min = FUNC0(start_gva);
	int i_max = FUNC0(end_gva);
	bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PMD - 1);
	int i;

	for (i = i_min; i <= i_max; ++i, start_gva = 0) {
		if (!FUNC3(pmd[i]))
			continue;

		pte = FUNC5(pmd + i, 0);
		if (i == i_max)
			end = end_gva;

		if (FUNC1(pte, start_gva, end)) {
			FUNC2(pmd + i);
			FUNC4(NULL, pte);
		} else {
			safe_to_remove = false;
		}
	}
	return safe_to_remove;
}