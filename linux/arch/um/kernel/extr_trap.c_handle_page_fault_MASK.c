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
typedef  int vm_fault_t ;
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_3__ {int /*<<< orphan*/  min_flt; int /*<<< orphan*/  maj_flt; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EACCES ; 
 int EFAULT ; 
 unsigned int FAULT_FLAG_ALLOW_RETRY ; 
 unsigned int FAULT_FLAG_KILLABLE ; 
 unsigned int FAULT_FLAG_TRIED ; 
 unsigned int FAULT_FLAG_USER ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int SEGV_ACCERR ; 
 int SEGV_MAPERR ; 
 int VM_EXEC ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_RETRY ; 
 int VM_FAULT_SIGBUS ; 
 int VM_FAULT_SIGSEGV ; 
 int VM_GROWSDOWN ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 () ; 
 struct vm_area_struct* FUNC7 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,unsigned long) ; 
 int FUNC9 (struct vm_area_struct*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(unsigned long address, unsigned long ip,
		      int is_write, int is_user, int *code_out)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	int err = -EFAULT;
	unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

	*code_out = SEGV_MAPERR;

	/*
	 * If the fault was with pagefaults disabled, don't take the fault, just
	 * fail.
	 */
	if (FUNC6())
		goto out_nosemaphore;

	if (is_user)
		flags |= FAULT_FLAG_USER;
retry:
	FUNC3(&mm->mmap_sem);
	vma = FUNC7(mm, address);
	if (!vma)
		goto out;
	else if (vma->vm_start <= address)
		goto good_area;
	else if (!(vma->vm_flags & VM_GROWSDOWN))
		goto out;
	else if (is_user && !FUNC0(address))
		goto out;
	else if (FUNC4(vma, address))
		goto out;

good_area:
	*code_out = SEGV_ACCERR;
	if (is_write) {
		if (!(vma->vm_flags & VM_WRITE))
			goto out;
		flags |= FAULT_FLAG_WRITE;
	} else {
		/* Don't require VM_READ|VM_EXEC for write faults! */
		if (!(vma->vm_flags & (VM_READ | VM_EXEC)))
			goto out;
	}

	do {
		vm_fault_t fault;

		fault = FUNC9(vma, address, flags);

		if ((fault & VM_FAULT_RETRY) && FUNC5(current))
			goto out_nosemaphore;

		if (FUNC18(fault & VM_FAULT_ERROR)) {
			if (fault & VM_FAULT_OOM) {
				goto out_of_memory;
			} else if (fault & VM_FAULT_SIGSEGV) {
				goto out;
			} else if (fault & VM_FAULT_SIGBUS) {
				err = -EACCES;
				goto out;
			}
			FUNC1();
		}
		if (flags & FAULT_FLAG_ALLOW_RETRY) {
			if (fault & VM_FAULT_MAJOR)
				current->maj_flt++;
			else
				current->min_flt++;
			if (fault & VM_FAULT_RETRY) {
				flags &= ~FAULT_FLAG_ALLOW_RETRY;
				flags |= FAULT_FLAG_TRIED;

				goto retry;
			}
		}

		pgd = FUNC11(mm, address);
		pud = FUNC17(pgd, address);
		pmd = FUNC12(pud, address);
		pte = FUNC14(pmd, address);
	} while (!FUNC15(*pte));
	err = 0;
	/*
	 * The below warning was added in place of
	 *	pte_mkyoung(); if (is_write) pte_mkdirty();
	 * If it's triggered, we'd see normally a hang here (a clean pte is
	 * marked read-only to emulate the dirty bit).
	 * However, the generic code can mark a PTE writable but clean on a
	 * concurrent read fault, triggering this harmlessly. So comment it out.
	 */
#if 0
	WARN_ON(!pte_young(*pte) || (is_write && !pte_dirty(*pte)));
#endif
	FUNC8(vma, address);
out:
	FUNC19(&mm->mmap_sem);
out_nosemaphore:
	return err;

out_of_memory:
	/*
	 * We ran out of memory, call the OOM killer, and return the userspace
	 * (which will retry the fault, or kill us if we got oom-killed).
	 */
	FUNC19(&mm->mmap_sem);
	if (!is_user)
		goto out_nosemaphore;
	FUNC10();
	return 0;
}