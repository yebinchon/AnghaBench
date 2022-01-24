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
struct pt_regs {int /*<<< orphan*/ * gr; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_BLOCKSTEP ; 
 int /*<<< orphan*/  TIF_SINGLESTEP ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACEPOINT ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void FUNC5(struct pt_regs *regs)
{
	int stepping = FUNC1(TIF_SINGLESTEP) ||
		FUNC1(TIF_BLOCKSTEP);

	FUNC0(regs);

#ifdef CONFIG_HAVE_SYSCALL_TRACEPOINTS
	if (unlikely(test_thread_flag(TIF_SYSCALL_TRACEPOINT)))
		trace_sys_exit(regs, regs->gr[20]);
#endif

	if (stepping || FUNC1(TIF_SYSCALL_TRACE))
		FUNC3(regs, stepping);
}