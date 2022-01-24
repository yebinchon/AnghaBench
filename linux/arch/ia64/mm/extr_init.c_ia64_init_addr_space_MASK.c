#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; void* vm_end; } ;
struct TYPE_5__ {int rbs_bot; } ;
struct TYPE_7__ {int personality; TYPE_2__* mm; TYPE_1__ thread; } ;
struct TYPE_6__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int MMAP_PAGE_ZERO ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 void* PAGE_SIZE ; 
 int VM_ACCOUNT ; 
 int VM_DATA_DEFAULT_FLAGS ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_GROWSUP ; 
 int VM_IO ; 
 int VM_MAYREAD ; 
 int VM_READ ; 
 int _PAGE_MA_NAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct vm_area_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_area_struct*) ; 

void
FUNC10 (void)
{
	struct vm_area_struct *vma;

	FUNC2();

	/*
	 * If we're out of memory and kmem_cache_alloc() returns NULL, we simply ignore
	 * the problem.  When the process attempts to write to the register backing store
	 * for the first time, it will get a SEGFAULT in this case.
	 */
	vma = FUNC6(current->mm);
	if (vma) {
		FUNC9(vma);
		vma->vm_start = current->thread.rbs_bot & PAGE_MASK;
		vma->vm_end = vma->vm_start + PAGE_SIZE;
		vma->vm_flags = VM_DATA_DEFAULT_FLAGS|VM_GROWSUP|VM_ACCOUNT;
		vma->vm_page_prot = FUNC8(vma->vm_flags);
		FUNC1(&current->mm->mmap_sem);
		if (FUNC3(current->mm, vma)) {
			FUNC5(&current->mm->mmap_sem);
			FUNC7(vma);
			return;
		}
		FUNC5(&current->mm->mmap_sem);
	}

	/* map NaT-page at address zero to speed up speculative dereferencing of NULL: */
	if (!(current->personality & MMAP_PAGE_ZERO)) {
		vma = FUNC6(current->mm);
		if (vma) {
			FUNC9(vma);
			vma->vm_end = PAGE_SIZE;
			vma->vm_page_prot = FUNC0(FUNC4(PAGE_READONLY) | _PAGE_MA_NAT);
			vma->vm_flags = VM_READ | VM_MAYREAD | VM_IO |
					VM_DONTEXPAND | VM_DONTDUMP;
			FUNC1(&current->mm->mmap_sem);
			if (FUNC3(current->mm, vma)) {
				FUNC5(&current->mm->mmap_sem);
				FUNC7(vma);
				return;
			}
			FUNC5(&current->mm->mmap_sem);
		}
	}
}