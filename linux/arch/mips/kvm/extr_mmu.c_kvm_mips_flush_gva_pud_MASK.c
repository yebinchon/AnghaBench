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
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int PTRS_PER_PUD ; 
 int FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(pud_t *pud, unsigned long start_gva,
				   unsigned long end_gva)
{
	pmd_t *pmd;
	unsigned long end = ~0ul;
	int i_min = FUNC0(start_gva);
	int i_max = FUNC0(end_gva);
	bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PUD - 1);
	int i;

	for (i = i_min; i <= i_max; ++i, start_gva = 0) {
		if (!FUNC5(pud[i]))
			continue;

		pmd = FUNC3(pud + i, 0);
		if (i == i_max)
			end = end_gva;

		if (FUNC1(pmd, start_gva, end)) {
			FUNC4(pud + i);
			FUNC2(NULL, pmd);
		} else {
			safe_to_remove = false;
		}
	}
	return safe_to_remove;
}