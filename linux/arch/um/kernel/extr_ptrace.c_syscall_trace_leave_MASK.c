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
struct pt_regs {int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int ptrace; } ;

/* Variables and functions */
 int PT_DTRACE ; 
 int PT_PTRACED ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,int /*<<< orphan*/ ) ; 

void FUNC5(struct pt_regs *regs)
{
	int ptraced = current->ptrace;

	FUNC0(regs);

	/* Fake a debug trap */
	if (ptraced & PT_DTRACE)
		FUNC1(&regs->regs, 0);

	if (!FUNC3(TIF_SYSCALL_TRACE))
		return;

	FUNC4(regs, 0);
	/* force do_signal() --> is_syscall() */
	if (ptraced & PT_PTRACED)
		FUNC2(TIF_SIGPENDING);
}