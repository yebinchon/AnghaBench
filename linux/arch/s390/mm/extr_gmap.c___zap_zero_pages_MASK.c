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
struct mm_walk {int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  _PAGE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pmd_t *pmd, unsigned long start,
			   unsigned long end, struct mm_walk *walk)
{
	unsigned long addr;

	for (addr = start; addr != end; addr += PAGE_SIZE) {
		pte_t *ptep;
		spinlock_t *ptl;

		ptep = FUNC2(walk->mm, pmd, addr, &ptl);
		if (FUNC1(FUNC3(*ptep)))
			FUNC5(walk->mm, addr, ptep, FUNC0(_PAGE_INVALID));
		FUNC4(ptep, ptl);
	}
	return 0;
}