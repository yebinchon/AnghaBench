#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_fault_t ;
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct TYPE_3__ {unsigned long gmap_addr; int gmap_write_flag; int gmap_int_code; int gmap_pfault; } ;
struct task_struct {TYPE_1__ thread; int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;
struct pt_regs {unsigned long int_parm_long; int int_code; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct gmap {scalar_t__ pfault_enabled; } ;
typedef  enum fault_type { ____Placeholder_fault_type } fault_type ;
struct TYPE_4__ {scalar_t__ gmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PGSTE ; 
 unsigned long EFAULT ; 
 unsigned long ENOMEM ; 
 unsigned int FAULT_FLAG_ALLOW_RETRY ; 
 unsigned int FAULT_FLAG_KILLABLE ; 
 unsigned int FAULT_FLAG_RETRY_NOWAIT ; 
 unsigned int FAULT_FLAG_TRIED ; 
 unsigned int FAULT_FLAG_USER ; 
 unsigned int FAULT_FLAG_WRITE ; 
#define  GMAP_FAULT 131 
 unsigned long HPAGE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  KERNEL_FAULT 130 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MAJ ; 
 int /*<<< orphan*/  PERF_COUNT_SW_PAGE_FAULTS_MIN ; 
 int /*<<< orphan*/  PIF_PER_TRAP ; 
 TYPE_2__ S390_lowcore ; 
#define  USER_FAULT 129 
#define  VDSO_FAULT 128 
 int VM_FAULT_BADACCESS ; 
 int VM_FAULT_BADCONTEXT ; 
 int VM_FAULT_BADMAP ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_PFAULT ; 
 int VM_FAULT_RETRY ; 
 int VM_FAULT_SIGNAL ; 
 int VM_GROWSDOWN ; 
 int VM_WRITE ; 
 unsigned long __FAIL_ADDR_MASK ; 
 unsigned long FUNC1 (struct gmap*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct vm_area_struct* FUNC8 (struct mm_struct*,unsigned long) ; 
 int FUNC9 (struct pt_regs*) ; 
 int FUNC10 (struct vm_area_struct*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC11 (struct vm_area_struct*) ; 
 scalar_t__ FUNC12 (struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,struct pt_regs*,unsigned long) ; 
 unsigned long store_indication ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct pt_regs*) ; 

__attribute__((used)) static inline vm_fault_t FUNC17(struct pt_regs *regs, int access)
{
	struct gmap *gmap;
	struct task_struct *tsk;
	struct mm_struct *mm;
	struct vm_area_struct *vma;
	enum fault_type type;
	unsigned long trans_exc_code;
	unsigned long address;
	unsigned int flags;
	vm_fault_t fault;

	tsk = current;
	/*
	 * The instruction that caused the program check has
	 * been nullified. Don't signal single step via SIGTRAP.
	 */
	FUNC3(regs, PIF_PER_TRAP);

	if (FUNC12(regs, 14))
		return 0;

	mm = tsk->mm;
	trans_exc_code = regs->int_parm_long;

	/*
	 * Verify that the fault happened in user space, that
	 * we are not in an interrupt and that there is a 
	 * user context.
	 */
	fault = VM_FAULT_BADCONTEXT;
	type = FUNC9(regs);
	switch (type) {
	case KERNEL_FAULT:
		goto out;
	case VDSO_FAULT:
		fault = VM_FAULT_BADMAP;
		goto out;
	case USER_FAULT:
	case GMAP_FAULT:
		if (FUNC7() || !mm)
			goto out;
		break;
	}

	address = trans_exc_code & __FAIL_ADDR_MASK;
	FUNC13(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, address);
	flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
	if (FUNC16(regs))
		flags |= FAULT_FLAG_USER;
	if (access == VM_WRITE || (trans_exc_code & store_indication) == 0x400)
		flags |= FAULT_FLAG_WRITE;
	FUNC4(&mm->mmap_sem);

	gmap = NULL;
	if (FUNC0(CONFIG_PGSTE) && type == GMAP_FAULT) {
		gmap = (struct gmap *) S390_lowcore.gmap;
		current->thread.gmap_addr = address;
		current->thread.gmap_write_flag = !!(flags & FAULT_FLAG_WRITE);
		current->thread.gmap_int_code = regs->int_code & 0xffff;
		address = FUNC2(gmap, address);
		if (address == -EFAULT) {
			fault = VM_FAULT_BADMAP;
			goto out_up;
		}
		if (gmap->pfault_enabled)
			flags |= FAULT_FLAG_RETRY_NOWAIT;
	}

retry:
	fault = VM_FAULT_BADMAP;
	vma = FUNC8(mm, address);
	if (!vma)
		goto out_up;

	if (FUNC14(vma->vm_start > address)) {
		if (!(vma->vm_flags & VM_GROWSDOWN))
			goto out_up;
		if (FUNC5(vma, address))
			goto out_up;
	}

	/*
	 * Ok, we have a good vm_area for this memory access, so
	 * we can handle it..
	 */
	fault = VM_FAULT_BADACCESS;
	if (FUNC14(!(vma->vm_flags & access)))
		goto out_up;

	if (FUNC11(vma))
		address &= HPAGE_MASK;
	/*
	 * If for any reason at all we couldn't handle the fault,
	 * make sure we exit gracefully rather than endlessly redo
	 * the fault.
	 */
	fault = FUNC10(vma, address, flags);
	/* No reason to continue if interrupted by SIGKILL. */
	if ((fault & VM_FAULT_RETRY) && FUNC6(current)) {
		fault = VM_FAULT_SIGNAL;
		if (flags & FAULT_FLAG_RETRY_NOWAIT)
			goto out_up;
		goto out;
	}
	if (FUNC14(fault & VM_FAULT_ERROR))
		goto out_up;

	/*
	 * Major/minor page fault accounting is only done on the
	 * initial attempt. If we go through a retry, it is extremely
	 * likely that the page will be found in page cache at that point.
	 */
	if (flags & FAULT_FLAG_ALLOW_RETRY) {
		if (fault & VM_FAULT_MAJOR) {
			tsk->maj_flt++;
			FUNC13(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1,
				      regs, address);
		} else {
			tsk->min_flt++;
			FUNC13(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1,
				      regs, address);
		}
		if (fault & VM_FAULT_RETRY) {
			if (FUNC0(CONFIG_PGSTE) && gmap &&
			    (flags & FAULT_FLAG_RETRY_NOWAIT)) {
				/* FAULT_FLAG_RETRY_NOWAIT has been set,
				 * mmap_sem has not been released */
				current->thread.gmap_pfault = 1;
				fault = VM_FAULT_PFAULT;
				goto out_up;
			}
			/* Clear FAULT_FLAG_ALLOW_RETRY to avoid any risk
			 * of starvation. */
			flags &= ~(FAULT_FLAG_ALLOW_RETRY |
				   FAULT_FLAG_RETRY_NOWAIT);
			flags |= FAULT_FLAG_TRIED;
			FUNC4(&mm->mmap_sem);
			goto retry;
		}
	}
	if (FUNC0(CONFIG_PGSTE) && gmap) {
		address =  FUNC1(gmap, current->thread.gmap_addr,
				       address);
		if (address == -EFAULT) {
			fault = VM_FAULT_BADMAP;
			goto out_up;
		}
		if (address == -ENOMEM) {
			fault = VM_FAULT_OOM;
			goto out_up;
		}
	}
	fault = 0;
out_up:
	FUNC15(&mm->mmap_sem);
out:
	return fault;
}