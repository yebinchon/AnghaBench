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

/* Variables and functions */
 int PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(pte_t *pte, unsigned long start_gva,
				   unsigned long end_gva)
{
	int i_min = FUNC1(start_gva);
	int i_max = FUNC1(end_gva);
	bool safe_to_remove = (i_min == 0 && i_max == PTRS_PER_PTE - 1);
	int i;

	/*
	 * There's no freeing to do, so there's no point clearing individual
	 * entries unless only part of the last level page table needs flushing.
	 */
	if (safe_to_remove)
		return true;

	for (i = i_min; i <= i_max; ++i) {
		if (!FUNC2(pte[i]))
			continue;

		FUNC3(pte + i, FUNC0(0));
	}
	return false;
}