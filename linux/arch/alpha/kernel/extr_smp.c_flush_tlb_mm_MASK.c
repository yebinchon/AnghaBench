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
struct mm_struct {scalar_t__* context; int /*<<< orphan*/  mm_users; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 int NR_CPUS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  ipi_flush_tlb_mm ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mm_struct*,int) ; 
 int FUNC6 () ; 

void
FUNC7(struct mm_struct *mm)
{
	FUNC3();

	if (mm == current->active_mm) {
		FUNC2(mm);
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

	FUNC5(ipi_flush_tlb_mm, mm, 1);

	FUNC4();
}