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
typedef  int vm_fault_t ;
struct task_struct {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int /*<<< orphan*/  UCreg_pc; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int BUS_ADRERR ; 
 unsigned int FAULT_FLAG_ALLOW_RETRY ; 
 unsigned int FAULT_FLAG_KILLABLE ; 
 unsigned int FAULT_FLAG_USER ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int SEGV_ACCERR ; 
 int SEGV_MAPERR ; 
 int SIGBUS ; 
 int SIGSEGV ; 
 int VM_FAULT_BADACCESS ; 
 int VM_FAULT_BADMAP ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_RETRY ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,unsigned long,unsigned int,struct pt_regs*) ; 
 int FUNC1 (struct mm_struct*,unsigned long,unsigned int,unsigned int,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned int,int,int,struct pt_regs*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct pt_regs*) ; 

__attribute__((used)) static int FUNC13(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
	struct task_struct *tsk;
	struct mm_struct *mm;
	int sig, code;
	vm_fault_t fault;
	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

	tsk = current;
	mm = tsk->mm;

	/*
	 * If we're in an interrupt or have no user
	 * context, we must not take the fault..
	 */
	if (FUNC6() || !mm)
		goto no_context;

	if (FUNC12(regs))
		flags |= FAULT_FLAG_USER;
	if (!(fsr ^ 0x12))
		flags |= FAULT_FLAG_WRITE;

	/*
	 * As per x86, we may deadlock here.  However, since the kernel only
	 * validly references user space from well defined areas of the code,
	 * we can bug out early if this is from code which shouldn't.
	 */
	if (!FUNC4(&mm->mmap_sem)) {
		if (!FUNC12(regs)
		    && !FUNC10(regs->UCreg_pc))
			goto no_context;
retry:
		FUNC3(&mm->mmap_sem);
	} else {
		/*
		 * The above down_read_trylock() might have succeeded in
		 * which case, we'll have missed the might_sleep() from
		 * down_read()
		 */
		FUNC8();
#ifdef CONFIG_DEBUG_VM
		if (!user_mode(regs) &&
		    !search_exception_tables(regs->UCreg_pc))
			goto no_context;
#endif
	}

	fault = FUNC1(mm, addr, fsr, flags, tsk);

	/* If we need to retry but a fatal signal is pending, handle the
	 * signal first. We do not need to release the mmap_sem because
	 * it would already be released in __lock_page_or_retry in
	 * mm/filemap.c. */
	if ((fault & VM_FAULT_RETRY) && FUNC5(current))
		return 0;

	if (!(fault & VM_FAULT_ERROR) && (flags & FAULT_FLAG_ALLOW_RETRY)) {
		if (fault & VM_FAULT_MAJOR)
			tsk->maj_flt++;
		else
			tsk->min_flt++;
		if (fault & VM_FAULT_RETRY) {
			/* Clear FAULT_FLAG_ALLOW_RETRY to avoid any risk
			* of starvation. */
			flags &= ~FAULT_FLAG_ALLOW_RETRY;
			goto retry;
		}
	}

	FUNC11(&mm->mmap_sem);

	/*
	 * Handle the "normal" case first - VM_FAULT_MAJOR
	 */
	if (FUNC7(!(fault &
	       (VM_FAULT_ERROR | VM_FAULT_BADMAP | VM_FAULT_BADACCESS))))
		return 0;

	/*
	 * If we are in kernel mode at this point, we
	 * have no context to handle this fault with.
	 */
	if (!FUNC12(regs))
		goto no_context;

	if (fault & VM_FAULT_OOM) {
		/*
		 * We ran out of memory, call the OOM killer, and return to
		 * userspace (which will retry the fault, or kill us if we
		 * got oom-killed)
		 */
		FUNC9();
		return 0;
	}

	if (fault & VM_FAULT_SIGBUS) {
		/*
		 * We had some memory, but were unable to
		 * successfully fix up this page fault.
		 */
		sig = SIGBUS;
		code = BUS_ADRERR;
	} else {
		/*
		 * Something tried to access memory that
		 * isn't in our memory map..
		 */
		sig = SIGSEGV;
		code = fault == VM_FAULT_BADACCESS ? SEGV_ACCERR : SEGV_MAPERR;
	}

	FUNC2(addr, fsr, sig, code, regs);
	return 0;

no_context:
	FUNC0(mm, addr, fsr, regs);
	return 0;
}