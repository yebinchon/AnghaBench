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
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct TYPE_2__ {scalar_t__* asid; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ NO_CONTEXT ; 
 int VM_EXEC ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 

void FUNC8(struct vm_area_struct *vma, unsigned long page)
{
	int cpu = FUNC7();
	struct mm_struct* mm = vma->vm_mm;
	unsigned long flags;
	int oldpid;

	if (mm->context.asid[cpu] == NO_CONTEXT)
		return;

	FUNC5(flags);

	oldpid = FUNC1();
	FUNC6(FUNC0(mm->context.asid[cpu]));

	if (vma->vm_flags & VM_EXEC)
		FUNC3(page);
	FUNC2(page);

	FUNC6(oldpid);

	FUNC4(flags);
}