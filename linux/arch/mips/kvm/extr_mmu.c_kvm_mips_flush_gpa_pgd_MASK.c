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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PTRS_PER_PGD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(pgd_t *pgd, unsigned long start_gpa,
				   unsigned long end_gpa)
{
	pud_t *pud;
	unsigned long end = ~0ul;
	int i_min = FUNC2(start_gpa);
	int i_max = FUNC2(end_gpa);
	bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PGD - 1);
	int i;

	for (i = i_min; i <= i_max; ++i, start_gpa = 0) {
		if (!FUNC3(pgd[i]))
			continue;

		pud = FUNC5(pgd + i, 0);
		if (i == i_max)
			end = end_gpa;

		if (FUNC0(pud, start_gpa, end)) {
			FUNC1(pgd + i);
			FUNC4(NULL, pud);
		} else {
			safe_to_remove = false;
		}
	}
	return safe_to_remove;
}