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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

void FUNC5(struct vm_area_struct *vma,
			   unsigned long addr, pte_t *ptep)
{
	size_t pgsize;
	int ncontig;

	if (!FUNC3(FUNC0(*ptep))) {
		FUNC4(vma, addr, ptep);
		return;
	}

	ncontig = FUNC2(vma->vm_mm, addr, ptep, &pgsize);
	FUNC1(vma->vm_mm, addr, ptep, pgsize, ncontig);
}