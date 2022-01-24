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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  copros; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct vm_area_struct *vma,
					 unsigned long addr, pte_t *ptep,
					 pte_t old_pte, pte_t pte)
{
	struct mm_struct *mm = vma->vm_mm;

	/*
	 * To avoid NMMU hang while relaxing access we need to flush the tlb before
	 * we set the new value.
	 */
	if (FUNC1(FUNC2(old_pte), FUNC2(pte)) &&
	    (FUNC0(&mm->context.copros) > 0))
		FUNC3(vma, addr);

	FUNC4(vma->vm_mm, addr, ptep, pte);
}