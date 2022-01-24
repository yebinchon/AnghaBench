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
struct mm_struct {int /*<<< orphan*/  context; } ;
struct TYPE_2__ {unsigned long sllp; } ;

/* Variables and functions */
 long EFAULT ; 
 unsigned long H_PGTABLE_RANGE ; 
 unsigned long SLB_VSID_USER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mm_struct*,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* mmu_psize_defs ; 
 long FUNC4 (unsigned long,unsigned long,unsigned long,int,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (unsigned long) ; 

__attribute__((used)) static long FUNC7(struct mm_struct *mm, unsigned long ea)
{
	unsigned long context;
	unsigned long flags;
	int bpsize;
	int ssize;

	/*
	 * consider this as bad access if we take a SLB miss
	 * on an address above addr limit.
	 */
	if (ea >= FUNC3(&mm->context))
		return -EFAULT;

	context = FUNC2(&mm->context, ea);
	if (!context)
		return -EFAULT;

	if (FUNC5(ea >= H_PGTABLE_RANGE)) {
		FUNC0(1);
		return -EFAULT;
	}

	ssize = FUNC6(ea);

	bpsize = FUNC1(mm, ea);
	flags = SLB_VSID_USER | mmu_psize_defs[bpsize].sllp;

	return FUNC4(ea, context, flags, ssize, false);
}