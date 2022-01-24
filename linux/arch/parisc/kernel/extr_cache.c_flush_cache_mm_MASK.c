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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct vm_area_struct* vm_next; } ;
struct mm_struct {scalar_t__ context; struct vm_area_struct* mmap; int /*<<< orphan*/ * pgd; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct mm_struct*) ; 
 scalar_t__ parisc_cache_flush_threshold ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

void FUNC17(struct mm_struct *mm)
{
	struct vm_area_struct *vma;
	pgd_t *pgd;

	/* Flushing the whole cache on each cpu takes forever on
	   rp3440, etc.  So, avoid it if the mm isn't too big.  */
	if ((!FUNC0(CONFIG_SMP) || !FUNC4()) &&
	    FUNC13(mm) >= parisc_cache_flush_threshold) {
		if (mm->context)
			FUNC6();
		FUNC5();
		return;
	}

	if (mm->context == FUNC12(3)) {
		for (vma = mm->mmap; vma; vma = vma->vm_next) {
			FUNC9(vma->vm_start, vma->vm_end);
			if (vma->vm_flags & VM_EXEC)
				FUNC10(vma->vm_start, vma->vm_end);
			FUNC8(vma, vma->vm_start, vma->vm_end);
		}
		return;
	}

	pgd = mm->pgd;
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		unsigned long addr;

		for (addr = vma->vm_start; addr < vma->vm_end;
		     addr += PAGE_SIZE) {
			unsigned long pfn;
			pte_t *ptep = FUNC11(pgd, addr);
			if (!ptep)
				continue;
			pfn = FUNC15(*ptep);
			if (!FUNC14(pfn))
				continue;
			if (FUNC16(mm->context)) {
				FUNC7(vma, addr);
				FUNC2(vma, addr, FUNC1(pfn));
			} else {
				FUNC3(vma, addr, FUNC1(pfn));
			}
		}
	}
}