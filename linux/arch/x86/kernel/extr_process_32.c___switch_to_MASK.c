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
struct thread_struct {int gs; scalar_t__ iopl; struct fpu fpu; } ;
struct task_struct {struct thread_struct thread; } ;

/* Variables and functions */
 struct task_struct* THREAD_SIZE ; 
 int /*<<< orphan*/  TIF_NEED_FPU_LOAD ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  cpu_current_top_of_stack ; 
 int /*<<< orphan*/  current_task ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct fpu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,struct task_struct*) ; 
 scalar_t__ FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct task_struct*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*) ; 

struct task_struct *
FUNC17(struct task_struct *prev_p, struct task_struct *next_p)
{
	struct thread_struct *prev = &prev_p->thread,
			     *next = &next_p->thread;
	struct fpu *prev_fpu = &prev->fpu;
	struct fpu *next_fpu = &next->fpu;
	int cpu = FUNC8();

	/* never put a printk in __switch_to... printk() calls wake_up*() indirectly */

	if (!FUNC13(TIF_NEED_FPU_LOAD))
		FUNC10(prev_fpu, cpu);

	/*
	 * Save away %gs. No need to save %fs, as it was saved on the
	 * stack on entry.  No need to save %es and %ds, as those are
	 * always kernel segments while inside the kernel.  Doing this
	 * before setting the new TLS descriptors avoids the situation
	 * where we temporarily have non-reloadable segments in %fs
	 * and %gs.  This could be an issue if the NMI handler ever
	 * used %fs or %gs (it does not today), or if the kernel is
	 * running inside of a hypervisor layer.
	 */
	FUNC3(prev->gs);

	/*
	 * Load the per-thread Thread-Local Storage descriptor.
	 */
	FUNC4(next, cpu);

	/*
	 * Restore IOPL if needed.  In normal use, the flags restore
	 * in the switch assembly will handle this.  But if the kernel
	 * is running virtualized at a non-zero CPL, the popf will
	 * not restore flags, so it must be done in a separate step.
	 */
	if (FUNC1() && FUNC15(prev->iopl != next->iopl))
		FUNC7(next->iopl);

	FUNC11(prev_p, next_p);

	/*
	 * Leave lazy mode, flushing any hypercalls made here.
	 * This must be done before restoring TLS segments so
	 * the GDT and LDT are properly updated.
	 */
	FUNC0(next_p);

	/*
	 * Reload esp0 and cpu_current_top_of_stack.  This changes
	 * current_thread_info().  Refresh the SYSENTER configuration in
	 * case prev or next is vm86.
	 */
	FUNC16(next_p);
	FUNC5(next);
	FUNC14(cpu_current_top_of_stack,
		       (unsigned long)FUNC12(next_p) +
		       THREAD_SIZE);

	/*
	 * Restore %gs if needed (which is common)
	 */
	if (prev->gs | next->gs)
		FUNC2(next->gs);

	FUNC14(current_task, next_p);

	FUNC9(next_fpu);

	/* Load the Intel cache allocation PQR MSR. */
	FUNC6();

	return prev_p;
}