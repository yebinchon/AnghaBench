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
typedef  int u32 ;
struct thread_info {int /*<<< orphan*/  flags; } ;
struct seccomp_data {int arch; long nr; int /*<<< orphan*/ * args; int /*<<< orphan*/  instruction_pointer; } ;
struct pt_regs {long orig_ax; int /*<<< orphan*/  bp; int /*<<< orphan*/  di; int /*<<< orphan*/  si; int /*<<< orphan*/  dx; int /*<<< orphan*/  cx; int /*<<< orphan*/  bx; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  r10; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int AUDIT_ARCH_I386 ; 
 int AUDIT_ARCH_X86_64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_DEBUG_ENTRY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACEPOINT ; 
 int _TIF_SECCOMP ; 
 int _TIF_SYSCALL_EMU ; 
 int _TIF_SYSCALL_TRACE ; 
 unsigned long FUNC3 (struct seccomp_data*) ; 
 int /*<<< orphan*/  current ; 
 struct thread_info* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*,int) ; 
 scalar_t__ FUNC6 () ; 
 struct pt_regs* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pt_regs*,long) ; 
 unsigned long FUNC10 (struct pt_regs*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC12(struct pt_regs *regs)
{
	u32 arch = FUNC6() ? AUDIT_ARCH_I386 : AUDIT_ARCH_X86_64;

	struct thread_info *ti = FUNC4();
	unsigned long ret = 0;
	u32 work;

	if (FUNC1(CONFIG_DEBUG_ENTRY))
		FUNC0(regs != FUNC7(current));

	work = FUNC2(ti->flags);

	if (work & (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_EMU)) {
		ret = FUNC10(regs);
		if (ret || (work & _TIF_SYSCALL_EMU))
			return -1L;
	}

#ifdef CONFIG_SECCOMP
	/*
	 * Do seccomp after ptrace, to catch any tracer changes.
	 */
	if (work & _TIF_SECCOMP) {
		struct seccomp_data sd;

		sd.arch = arch;
		sd.nr = regs->orig_ax;
		sd.instruction_pointer = regs->ip;
#ifdef CONFIG_X86_64
		if (arch == AUDIT_ARCH_X86_64) {
			sd.args[0] = regs->di;
			sd.args[1] = regs->si;
			sd.args[2] = regs->dx;
			sd.args[3] = regs->r10;
			sd.args[4] = regs->r8;
			sd.args[5] = regs->r9;
		} else
#endif
		{
			sd.args[0] = regs->bx;
			sd.args[1] = regs->cx;
			sd.args[2] = regs->dx;
			sd.args[3] = regs->si;
			sd.args[4] = regs->di;
			sd.args[5] = regs->bp;
		}

		ret = __secure_computing(&sd);
		if (ret == -1)
			return ret;
	}
#endif

	if (FUNC11(FUNC8(TIF_SYSCALL_TRACEPOINT)))
		FUNC9(regs, regs->orig_ax);

	FUNC5(regs, arch);

	return ret ?: regs->orig_ax;
}