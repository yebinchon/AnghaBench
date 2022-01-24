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
 unsigned long PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int VM_EXEC ; 
 int _TLB_ENTRIES ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 

void FUNC10(struct vm_area_struct *vma,
		unsigned long start, unsigned long end)
{
	int cpu = FUNC9();
	struct mm_struct *mm = vma->vm_mm;
	unsigned long flags;

	if (mm->context.asid[cpu] == NO_CONTEXT)
		return;

	FUNC7("[tlbrange<%02lx,%08lx,%08lx>]\n",
		 (unsigned long)mm->context.asid[cpu], start, end);
	FUNC6(flags);

	if (end-start + (PAGE_SIZE-1) <= _TLB_ENTRIES << PAGE_SHIFT) {
		int oldpid = FUNC1();

		FUNC8(FUNC0(mm->context.asid[cpu]));
		start &= PAGE_MASK;
		if (vma->vm_flags & VM_EXEC)
			while(start < end) {
				FUNC3(start);
				FUNC2(start);
				start += PAGE_SIZE;
			}
		else
			while(start < end) {
				FUNC2(start);
				start += PAGE_SIZE;
			}

		FUNC8(oldpid);
	} else {
		FUNC4(mm);
	}
	FUNC5(flags);
}