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
struct pt_regs {int msr; } ;
struct mm_struct {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int in_kernel_slb_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long EFAULT ; 
 long EINVAL ; 
 unsigned long LINEAR_MAP_REGION_ID ; 
 int MSR_EE ; 
 int MSR_RI ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 (unsigned long) ; 
 TYPE_1__* local_paca ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 long FUNC6 (unsigned long,unsigned long) ; 
 long FUNC7 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC8 (int) ; 

long FUNC9(struct pt_regs *regs, unsigned long ea)
{
	unsigned long id = FUNC3(ea);

	/* IRQs are not reconciled here, so can't check irqs_disabled */
	FUNC1(FUNC4() & MSR_EE);

	if (FUNC8(!(regs->msr & MSR_RI)))
		return -EINVAL;

	/*
	 * SLB kernel faults must be very careful not to touch anything
	 * that is not bolted. E.g., PACA and global variables are okay,
	 * mm->context stuff is not.
	 *
	 * SLB user faults can access all of kernel memory, but must be
	 * careful not to touch things like IRQ state because it is not
	 * "reconciled" here. The difficulty is that we must use
	 * fast_exception_return to return from kernel SLB faults without
	 * looking at possible non-bolted memory. We could test user vs
	 * kernel faults in the interrupt handler asm and do a full fault,
	 * reconcile, ret_from_except for user faults which would make them
	 * first class kernel code. But for performance it's probably nicer
	 * if they go via fast_exception_return too.
	 */
	if (id >= LINEAR_MAP_REGION_ID) {
		long err;
#ifdef CONFIG_DEBUG_VM
		/* Catch recursive kernel SLB faults. */
		BUG_ON(local_paca->in_kernel_slb_handler);
		local_paca->in_kernel_slb_handler = 1;
#endif
		err = FUNC6(ea, id);
#ifdef CONFIG_DEBUG_VM
		local_paca->in_kernel_slb_handler = 0;
#endif
		return err;
	} else {
		struct mm_struct *mm = current->mm;
		long err;

		if (FUNC8(!mm))
			return -EFAULT;

		err = FUNC7(mm, ea);
		if (!err)
			FUNC5(FUNC2(), ea);

		return err;
	}
}