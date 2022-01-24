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
struct page {int dummy; } ;
struct mm_struct {scalar_t__* context; int /*<<< orphan*/  mm_users; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int NR_CPUS ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  ipi_flush_icache_page ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mm_struct*,int) ; 
 int FUNC6 () ; 

void
FUNC7(struct vm_area_struct *vma, struct page *page,
			unsigned long addr, int len)
{
	struct mm_struct *mm = vma->vm_mm;

	if ((vma->vm_flags & VM_EXEC) == 0)
		return;

	FUNC3();

	if (mm == current->active_mm) {
		FUNC0(mm);
		if (FUNC1(&mm->mm_users) <= 1) {
			int cpu, this_cpu = FUNC6();
			for (cpu = 0; cpu < NR_CPUS; cpu++) {
				if (!FUNC2(cpu) || cpu == this_cpu)
					continue;
				if (mm->context[cpu])
					mm->context[cpu] = 0;
			}
			FUNC4();
			return;
		}
	}

	FUNC5(ipi_flush_icache_page, mm, 1);

	FUNC4();
}