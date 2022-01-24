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
struct pt_regs {unsigned long* regs; } ;
typedef  enum ptrace_syscall_dir { ____Placeholder_ptrace_syscall_dir } ptrace_syscall_dir ;

/* Variables and functions */
 int PTRACE_SYSCALL_EXIT ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pt_regs *regs,
				     enum ptrace_syscall_dir dir)
{
	int regno;
	unsigned long saved_reg;

	/*
	 * A scratch register (ip(r12) on AArch32, x7 on AArch64) is
	 * used to denote syscall entry/exit:
	 */
	regno = (FUNC1() ? 12 : 7);
	saved_reg = regs->regs[regno];
	regs->regs[regno] = dir;

	if (dir == PTRACE_SYSCALL_EXIT)
		FUNC3(regs, 0);
	else if (FUNC2(regs))
		FUNC0(regs);

	regs->regs[regno] = saved_reg;
}