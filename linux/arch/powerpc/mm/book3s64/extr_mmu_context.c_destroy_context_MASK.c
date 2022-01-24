#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t id; int /*<<< orphan*/  iommu_group_mem_list; } ;
struct mm_struct {TYPE_2__ context; } ;
struct TYPE_3__ {scalar_t__ prtb0; } ;

/* Variables and functions */
 size_t MMU_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* process_tb ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 

void FUNC5(struct mm_struct *mm)
{
#ifdef CONFIG_SPAPR_TCE_IOMMU
	WARN_ON_ONCE(!list_empty(&mm->context.iommu_group_mem_list));
#endif
	/*
	 * For tasks which were successfully initialized we end up calling
	 * arch_exit_mmap() which clears the process table entry. And
	 * arch_exit_mmap() is called before the required fullmm TLB flush
	 * which does a RIC=2 flush. Hence for an initialized task, we do clear
	 * any cached process table entries.
	 *
	 * The condition below handles the error case during task init. We have
	 * set the process table entry early and if we fail a task
	 * initialization, we need to ensure the process table entry is zeroed.
	 * We need not worry about process table entry caches because the task
	 * never ran with the PID value.
	 */
	if (FUNC3())
		process_tb[mm->context.id].prtb0 = 0;
	else
		FUNC4(mm);
	FUNC1(&mm->context);
	mm->context.id = MMU_NO_CONTEXT;
}