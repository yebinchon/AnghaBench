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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 struct vm_area_struct FUNC0 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pte_t FUNC9(struct mm_struct *mm,
			     unsigned long addr,
			     pte_t *ptep,
			     unsigned long pgsize,
			     unsigned long ncontig)
{
	pte_t orig_pte = FUNC2(ptep);
	bool valid = FUNC6(orig_pte);
	unsigned long i, saddr = addr;

	for (i = 0; i < ncontig; i++, addr += pgsize, ptep++) {
		pte_t pte = FUNC8(mm, addr, ptep);

		/*
		 * If HW_AFDBM is enabled, then the HW could turn on
		 * the dirty or accessed bit for any page in the set,
		 * so check them all.
		 */
		if (FUNC3(pte))
			orig_pte = FUNC4(orig_pte);

		if (FUNC7(pte))
			orig_pte = FUNC5(orig_pte);
	}

	if (valid) {
		struct vm_area_struct vma = FUNC0(mm, 0);
		FUNC1(&vma, saddr, addr);
	}
	return orig_pte;
}