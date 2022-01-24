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
struct pt_regs {int /*<<< orphan*/  pc; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct pt_regs*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(struct pt_regs *regs, unsigned long exccause)
{
	FUNC0("Caught unhandled exception - should not happen",
			regs, SIGKILL);

	/* If in user mode, send SIGILL signal to current process */
	FUNC2("Caught unhandled exception in '%s' "
			    "(pid = %d, pc = %#010lx) - should not happen\n"
			    "\tEXCCAUSE is %ld\n",
			    current->comm, FUNC3(current), regs->pc,
			    exccause);
	FUNC1(SIGILL);
}