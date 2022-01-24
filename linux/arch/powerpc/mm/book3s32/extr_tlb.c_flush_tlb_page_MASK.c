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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  Hash ; 
 unsigned long TASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int) ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(struct vm_area_struct *vma, unsigned long vmaddr)
{
	struct mm_struct *mm;
	pmd_t *pmd;

	if (!Hash) {
		FUNC0(vmaddr);
		return;
	}
	mm = (vmaddr < TASK_SIZE)? vma->vm_mm: &init_mm;
	pmd = FUNC4(FUNC6(FUNC2(mm, vmaddr), vmaddr), vmaddr);
	if (!FUNC3(*pmd))
		FUNC1(mm->context.id, vmaddr, FUNC5(*pmd), 1);
}