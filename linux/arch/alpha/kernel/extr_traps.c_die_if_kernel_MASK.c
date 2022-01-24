#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int ps; scalar_t__ pc; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDEP_NOW_UNRELIABLE ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  TAINT_DIE ; 
 int /*<<< orphan*/  TIF_DIE_IF_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(char * str, struct pt_regs *regs, long err, unsigned long *r9_15)
{
	if (regs->ps & 8)
		return;
#ifdef CONFIG_SMP
	printk("CPU %d ", hard_smp_processor_id());
#endif
	FUNC7("%s(%d): %s %ld\n", current->comm, FUNC8(current), str, err);
	FUNC2(regs, r9_15);
	FUNC0(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
	FUNC3((unsigned long *)(regs+1));
	FUNC1((unsigned int *)regs->pc);

	if (FUNC9 (TIF_DIE_IF_KERNEL)) {
		FUNC7("die_if_kernel recursion detected.\n");
		FUNC6();
		while (1);
	}
	FUNC4(SIGSEGV);
}