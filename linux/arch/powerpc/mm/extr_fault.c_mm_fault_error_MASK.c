#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int vm_fault_t ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SIGKILL ; 
 int SIGSEGV ; 
 int VM_FAULT_HWPOISON ; 
 int VM_FAULT_HWPOISON_LARGE ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int VM_FAULT_SIGSEGV ; 
 int FUNC1 (struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (struct pt_regs*,unsigned long,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC6(struct pt_regs *regs, unsigned long addr,
				vm_fault_t fault)
{
	/*
	 * Kernel page fault interrupted by SIGKILL. We have no reason to
	 * continue processing.
	 */
	if (FUNC3(current) && !FUNC5(regs))
		return SIGKILL;

	/* Out of memory */
	if (fault & VM_FAULT_OOM) {
		/*
		 * We ran out of memory, or some other thing happened to us that
		 * made us unable to handle the page fault gracefully.
		 */
		if (!FUNC5(regs))
			return SIGSEGV;
		FUNC4();
	} else {
		if (fault & (VM_FAULT_SIGBUS|VM_FAULT_HWPOISON|
			     VM_FAULT_HWPOISON_LARGE))
			return FUNC2(regs, addr, fault);
		else if (fault & VM_FAULT_SIGSEGV)
			return FUNC1(regs, addr);
		else
			FUNC0();
	}
	return 0;
}