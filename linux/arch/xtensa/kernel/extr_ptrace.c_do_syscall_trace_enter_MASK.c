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
struct pt_regs {int /*<<< orphan*/  syscall; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_SYSCALL ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACEPOINT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt_regs*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pt_regs*) ; 

void FUNC4(struct pt_regs *regs)
{
	if (FUNC1(TIF_SYSCALL_TRACE) &&
	    FUNC3(regs))
		regs->syscall = NO_SYSCALL;

	if (FUNC1(TIF_SYSCALL_TRACEPOINT))
		FUNC2(regs, FUNC0(current, regs));
}