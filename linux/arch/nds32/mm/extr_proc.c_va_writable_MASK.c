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
struct pt_regs {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  scalar_t__ pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (struct mm_struct*,unsigned long) ; 

int FUNC5(struct pt_regs *regs, unsigned long addr)
{
	struct mm_struct *mm = current->mm;
	pte_t pte;
	int ret = 0;

	if (FUNC2(regs)) {
		/* user mode */
		pte = FUNC4(mm, addr);
		if (!pte && FUNC1(pte))
			ret = 1;
	} else {
		/* superuser mode */
		pte = FUNC3(addr);
		if (!pte && FUNC0(pte))
			ret = 1;
	}
	return ret;
}