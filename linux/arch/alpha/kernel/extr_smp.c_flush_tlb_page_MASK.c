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
struct mm_struct {scalar_t__* context; int /*<<< orphan*/  mm_users; } ;
struct flush_tlb_page_struct {unsigned long addr; struct mm_struct* mm; struct vm_area_struct* vma; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int NR_CPUS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  ipi_flush_tlb_page ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct flush_tlb_page_struct*,int) ; 
 int FUNC6 () ; 

void
FUNC7(struct vm_area_struct *vma, unsigned long addr)
{
	struct flush_tlb_page_struct data;
	struct mm_struct *mm = vma->vm_mm;

	FUNC3();

	if (mm == current->active_mm) {
		FUNC2(mm, vma, addr);
		if (FUNC0(&mm->mm_users) <= 1) {
			int cpu, this_cpu = FUNC6();
			for (cpu = 0; cpu < NR_CPUS; cpu++) {
				if (!FUNC1(cpu) || cpu == this_cpu)
					continue;
				if (mm->context[cpu])
					mm->context[cpu] = 0;
			}
			FUNC4();
			return;
		}
	}

	data.vma = vma;
	data.mm = mm;
	data.addr = addr;

	FUNC5(ipi_flush_tlb_page, &data, 1);

	FUNC4();
}