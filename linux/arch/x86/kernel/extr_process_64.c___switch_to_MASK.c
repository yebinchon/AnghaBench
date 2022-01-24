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
struct fpu {int dummy; } ;
struct thread_struct {unsigned short es; unsigned short ds; scalar_t__ iopl; struct fpu fpu; } ;
struct task_struct {struct thread_struct thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_ENTRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  X86_BUG_SYSRET_SS_ATTRS ; 
 int /*<<< orphan*/  X86_FEATURE_XENPV ; 
 unsigned short __KERNEL_DS ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  cpu_current_top_of_stack ; 
 int /*<<< orphan*/  current_task ; 
 int /*<<< orphan*/  ds ; 
 int /*<<< orphan*/  es ; 
 int /*<<< orphan*/  irq_count ; 
 int /*<<< orphan*/  FUNC3 (struct thread_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  ss ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct fpu*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*,struct task_struct*) ; 
 struct task_struct* FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct task_struct*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct thread_struct*,struct thread_struct*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 

struct task_struct *
FUNC22(struct task_struct *prev_p, struct task_struct *next_p)
{
	struct thread_struct *prev = &prev_p->thread;
	struct thread_struct *next = &next_p->thread;
	struct fpu *prev_fpu = &prev->fpu;
	struct fpu *next_fpu = &next->fpu;
	int cpu = FUNC8();

	FUNC1(FUNC0(CONFIG_DEBUG_ENTRY) &&
		     FUNC16(irq_count) != -1);

	if (!FUNC15(TIF_NEED_FPU_LOAD))
		FUNC12(prev_fpu, cpu);

	/* We must save %fs and %gs before load_TLS() because
	 * %fs and %gs may be cleared by load_TLS().
	 *
	 * (e.g. xen_load_tls())
	 */
	FUNC6(prev_p);

	/*
	 * Load TLS before restoring any segments so that segment loads
	 * reference the correct GDT entries.
	 */
	FUNC3(next, cpu);

	/*
	 * Leave lazy mode, flushing any hypercalls made here.  This
	 * must be done after loading TLS entries in the GDT but before
	 * loading segments that might reference them.
	 */
	FUNC2(next_p);

	/* Switch DS and ES.
	 *
	 * Reading them only returns the selectors, but writing them (if
	 * nonzero) loads the full descriptor from the GDT or LDT.  The
	 * LDT for next is loaded in switch_mm, and the GDT is loaded
	 * above.
	 *
	 * We therefore need to write new values to the segment
	 * registers on every context switch unless both the new and old
	 * values are zero.
	 *
	 * Note that we don't need to do anything for CS and SS, as
	 * those are saved and restored as part of pt_regs.
	 */
	FUNC7(es, prev->es);
	if (FUNC18(next->es | prev->es))
		FUNC4(es, next->es);

	FUNC7(ds, prev->ds);
	if (FUNC18(next->ds | prev->ds))
		FUNC4(ds, next->ds);

	FUNC20(prev, next);

	/*
	 * Switch the PDA and FPU contexts.
	 */
	FUNC17(current_task, next_p);
	FUNC17(cpu_current_top_of_stack, FUNC14(next_p));

	FUNC11(next_fpu);

	/* Reload sp0. */
	FUNC19(next_p);

	FUNC13(prev_p, next_p);

#ifdef CONFIG_XEN_PV
	/*
	 * On Xen PV, IOPL bits in pt_regs->flags have no effect, and
	 * current_pt_regs()->flags may not match the current task's
	 * intended IOPL.  We need to switch it manually.
	 */
	if (unlikely(static_cpu_has(X86_FEATURE_XENPV) &&
		     prev->iopl != next->iopl))
		xen_set_iopl_mask(next->iopl);
#endif

	if (FUNC10(X86_BUG_SYSRET_SS_ATTRS)) {
		/*
		 * AMD CPUs have a misfeature: SYSRET sets the SS selector but
		 * does not update the cached descriptor.  As a result, if we
		 * do SYSRET while SS is NULL, we'll end up in user mode with
		 * SS apparently equal to __USER_DS but actually unusable.
		 *
		 * The straightforward workaround would be to fix it up just
		 * before SYSRET, but that would slow down the system call
		 * fast paths.  Instead, we ensure that SS is never NULL in
		 * system call context.  We do this by replacing NULL SS
		 * selectors at every context switch.  SYSCALL sets up a valid
		 * SS, so the only way to get NULL is to re-enter the kernel
		 * from CPL 3 through an interrupt.  Since that can't happen
		 * in the same task as a running syscall, we are guaranteed to
		 * context switch between every interrupt vector entry and a
		 * subsequent SYSRET.
		 *
		 * We read SS first because SS reads are much faster than
		 * writes.  Out of caution, we force SS to __KERNEL_DS even if
		 * it previously had a different non-NULL value.
		 */
		unsigned short ss_sel;
		FUNC7(ss, ss_sel);
		if (ss_sel != __KERNEL_DS)
			FUNC4(ss, __KERNEL_DS);
	}

	/* Load the Intel cache allocation PQR MSR. */
	FUNC5();

	return prev_p;
}