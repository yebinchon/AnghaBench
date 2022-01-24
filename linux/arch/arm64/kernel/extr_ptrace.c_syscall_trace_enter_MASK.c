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
struct pt_regs {int syscallno; int /*<<< orphan*/ * regs; int /*<<< orphan*/  orig_x0; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_SYSCALL_ENTER ; 
 int /*<<< orphan*/  TIF_SYSCALL_EMU ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACEPOINT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int /*<<< orphan*/ ) ; 

int FUNC6(struct pt_regs *regs)
{
	if (FUNC3(TIF_SYSCALL_TRACE) ||
		FUNC3(TIF_SYSCALL_EMU)) {
		FUNC5(regs, PTRACE_SYSCALL_ENTER);
		if (!FUNC1(regs) || FUNC3(TIF_SYSCALL_EMU))
			return -1;
	}

	/* Do the secure computing after ptrace; failures should be fast. */
	if (FUNC2(NULL) == -1)
		return -1;

	if (FUNC3(TIF_SYSCALL_TRACEPOINT))
		FUNC4(regs, regs->syscallno);

	FUNC0(regs->syscallno, regs->orig_x0, regs->regs[1],
			    regs->regs[2], regs->regs[3]);

	return regs->syscallno;
}