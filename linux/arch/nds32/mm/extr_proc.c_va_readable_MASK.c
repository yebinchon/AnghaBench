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
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long) ; 

int FUNC4(struct pt_regs *regs, unsigned long addr)
{
	struct mm_struct *mm = current->mm;
	pte_t pte;
	int ret = 0;

	if (FUNC1(regs)) {
		/* user mode */
		pte = FUNC3(mm, addr);
		if (!pte && FUNC0(pte))
			ret = 1;
	} else {
		/* superuser mode is always readable, so we can only
		 * check it is present or not*/
		return (! !FUNC2(addr));
	}
	return ret;
}