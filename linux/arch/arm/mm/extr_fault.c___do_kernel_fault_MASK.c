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
struct pt_regs {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ALERT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pt_regs*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mm_struct*,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct mm_struct *mm, unsigned long addr, unsigned int fsr,
		  struct pt_regs *regs)
{
	/*
	 * Are we prepared to handle this kernel fault?
	 */
	if (FUNC3(regs))
		return;

	/*
	 * No handler, we'll have to terminate things with extreme prejudice.
	 */
	FUNC0(1);
	FUNC4("8<--- cut here ---\n");
	FUNC4("Unable to handle kernel %s at virtual address %08lx\n",
		 (addr < PAGE_SIZE) ? "NULL pointer dereference" :
		 "paging request", addr);

	FUNC5(KERN_ALERT, mm, addr);
	FUNC1("Oops", regs, fsr);
	FUNC0(0);
	FUNC2(SIGKILL);
}