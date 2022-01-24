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
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct task_struct {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int flags; int /*<<< orphan*/  ip; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ADRERR ; 
 unsigned int FAULT_FLAG_ALLOW_RETRY ; 
 unsigned int FAULT_FLAG_INSTRUCTION ; 
 unsigned int FAULT_FLAG_KILLABLE ; 
 unsigned int FAULT_FLAG_TRIED ; 
 unsigned int FAULT_FLAG_USER ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MAJ ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MIN ; 
 int /*<<< orphan*/  SIGBUS ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_RETRY ; 
 int VM_GROWSDOWN ; 
 int X86_EFLAGS_AC ; 
 int X86_EFLAGS_IF ; 
 int /*<<< orphan*/  X86_FEATURE_SMAP ; 
 unsigned long X86_PF_INSTR ; 
 unsigned long X86_PF_RSVD ; 
 unsigned long X86_PF_USER ; 
 unsigned long X86_PF_WRITE ; 
 int /*<<< orphan*/  X86_TRAP_PF ; 
 int FUNC0 (unsigned long,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,unsigned long,unsigned long,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,unsigned long,struct task_struct*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (unsigned long,struct pt_regs*,unsigned long) ; 
 int FUNC9 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 scalar_t__ FUNC11 () ; 
 struct vm_area_struct* FUNC12 (struct mm_struct*,unsigned long) ; 
 int FUNC13 (struct vm_area_struct*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC14 (unsigned long) ; 
 int FUNC15 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct pt_regs*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC20 (struct pt_regs*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,struct pt_regs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct pt_regs*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (struct pt_regs*) ; 

__attribute__((used)) static inline
void FUNC27(struct pt_regs *regs,
			unsigned long hw_error_code,
			unsigned long address)
{
	struct vm_area_struct *vma;
	struct task_struct *tsk;
	struct mm_struct *mm;
	vm_fault_t fault, major = 0;
	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

	tsk = current;
	mm = tsk->mm;

	/* kprobes don't want to hook the spurious faults: */
	if (FUNC24(FUNC15(regs, X86_TRAP_PF)))
		return;

	/*
	 * Reserved bits are never expected to be set on
	 * entries in the user portion of the page tables.
	 */
	if (FUNC24(hw_error_code & X86_PF_RSVD))
		FUNC22(regs, hw_error_code, address);

	/*
	 * If SMAP is on, check for invalid kernel (supervisor) access to user
	 * pages in the user address space.  The odd case here is WRUSS,
	 * which, according to the preliminary documentation, does not respect
	 * SMAP and will have the USER bit set so, in all cases, SMAP
	 * enforcement appears to be consistent with the USER bit.
	 */
	if (FUNC24(FUNC5(X86_FEATURE_SMAP) &&
		     !(hw_error_code & X86_PF_USER) &&
		     !(regs->flags & X86_EFLAGS_AC)))
	{
		FUNC3(regs, hw_error_code, address);
		return;
	}

	/*
	 * If we're in an interrupt, have no user context or are running
	 * in a region with pagefaults disabled then we must not take the fault
	 */
	if (FUNC24(FUNC11() || !mm)) {
		FUNC3(regs, hw_error_code, address);
		return;
	}

	/*
	 * It's safe to allow irq's after cr2 has been saved and the
	 * vmalloc fault has been handled.
	 *
	 * User-mode registers count as a user access even for any
	 * potential system fault or CPU buglet:
	 */
	if (FUNC26(regs)) {
		FUNC17();
		flags |= FAULT_FLAG_USER;
	} else {
		if (regs->flags & X86_EFLAGS_IF)
			FUNC17();
	}

	FUNC21(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);

	if (hw_error_code & X86_PF_WRITE)
		flags |= FAULT_FLAG_WRITE;
	if (hw_error_code & X86_PF_INSTR)
		flags |= FAULT_FLAG_INSTRUCTION;

#ifdef CONFIG_X86_64
	/*
	 * Faults in the vsyscall page might need emulation.  The
	 * vsyscall page is at a high address (>PAGE_OFFSET), but is
	 * considered to be part of the user address space.
	 *
	 * The vsyscall page does not have a "real" VMA, so do this
	 * emulation before we go searching for VMAs.
	 *
	 * PKRU never rejects instruction fetches, so we don't need
	 * to consider the PF_PK bit.
	 */
	if (is_vsyscall_vaddr(address)) {
		if (emulate_vsyscall(hw_error_code, regs, address))
			return;
	}
#endif

	/*
	 * Kernel-mode access to the user address space should only occur
	 * on well-defined single instructions listed in the exception
	 * tables.  But, an erroneous kernel fault occurring outside one of
	 * those areas which also holds mmap_sem might deadlock attempting
	 * to validate the fault against the address space.
	 *
	 * Only do the expensive exception table search when we might be at
	 * risk of a deadlock.  This happens if we
	 * 1. Failed to acquire mmap_sem, and
	 * 2. The access did not originate in userspace.
	 */
	if (FUNC24(!FUNC7(&mm->mmap_sem))) {
		if (!FUNC26(regs) && !FUNC23(regs->ip)) {
			/*
			 * Fault from code in kernel from
			 * which we do not expect faults.
			 */
			FUNC3(regs, hw_error_code, address);
			return;
		}
retry:
		FUNC6(&mm->mmap_sem);
	} else {
		/*
		 * The above down_read_trylock() might have succeeded in
		 * which case we'll have missed the might_sleep() from
		 * down_read():
		 */
		FUNC18();
	}

	vma = FUNC12(mm, address);
	if (FUNC24(!vma)) {
		FUNC1(regs, hw_error_code, address);
		return;
	}
	if (FUNC16(vma->vm_start <= address))
		goto good_area;
	if (FUNC24(!(vma->vm_flags & VM_GROWSDOWN))) {
		FUNC1(regs, hw_error_code, address);
		return;
	}
	if (FUNC24(FUNC9(vma, address))) {
		FUNC1(regs, hw_error_code, address);
		return;
	}

	/*
	 * Ok, we have a good vm_area for this memory access, so
	 * we can handle it..
	 */
good_area:
	if (FUNC24(FUNC0(hw_error_code, vma))) {
		FUNC2(regs, hw_error_code, address, vma);
		return;
	}

	/*
	 * If for any reason at all we couldn't handle the fault,
	 * make sure we exit gracefully rather than endlessly redo
	 * the fault.  Since we never set FAULT_FLAG_RETRY_NOWAIT, if
	 * we get VM_FAULT_RETRY back, the mmap_sem has been unlocked.
	 *
	 * Note that handle_userfault() may also release and reacquire mmap_sem
	 * (and not return with VM_FAULT_RETRY), when returning to userland to
	 * repeat the page fault later with a VM_FAULT_NOPAGE retval
	 * (potentially after handling any pending signal during the return to
	 * userland). The return to userland is identified whenever
	 * FAULT_FLAG_USER|FAULT_FLAG_KILLABLE are both set in flags.
	 */
	fault = FUNC13(vma, address, flags);
	major |= fault & VM_FAULT_MAJOR;

	/*
	 * If we need to retry the mmap_sem has already been released,
	 * and if there is a fatal signal pending there is no guarantee
	 * that we made any progress. Handle this case first.
	 */
	if (FUNC24(fault & VM_FAULT_RETRY)) {
		/* Retry at most once */
		if (flags & FAULT_FLAG_ALLOW_RETRY) {
			flags &= ~FAULT_FLAG_ALLOW_RETRY;
			flags |= FAULT_FLAG_TRIED;
			if (!FUNC10(tsk))
				goto retry;
		}

		/* User mode? Just return to handle the fatal exception */
		if (flags & FAULT_FLAG_USER)
			return;

		/* Not returning to user mode? Handle exceptions or die: */
		FUNC20(regs, hw_error_code, address, SIGBUS, BUS_ADRERR);
		return;
	}

	FUNC25(&mm->mmap_sem);
	if (FUNC24(fault & VM_FAULT_ERROR)) {
		FUNC19(regs, hw_error_code, address, fault);
		return;
	}

	/*
	 * Major/minor page fault accounting. If any of the events
	 * returned VM_FAULT_MAJOR, we account it as a major fault.
	 */
	if (major) {
		tsk->maj_flt++;
		FUNC21(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1, regs, address);
	} else {
		tsk->min_flt++;
		FUNC21(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs, address);
	}

	FUNC4(regs, address, tsk);
}