#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; TYPE_1__* vm_mm; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {scalar_t__ context; int /*<<< orphan*/ * pgd; } ;

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
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int) ; 
 unsigned long parisc_cache_flush_threshold ; 
 scalar_t__ FUNC12 (unsigned long) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

void FUNC15(struct vm_area_struct *vma,
		unsigned long start, unsigned long end)
{
	pgd_t *pgd;
	unsigned long addr;

	if ((!FUNC0(CONFIG_SMP) || !FUNC4()) &&
	    end - start >= parisc_cache_flush_threshold) {
		if (vma->vm_mm->context)
			FUNC7(vma, start, end);
		FUNC5();
		return;
	}

	if (vma->vm_mm->context == FUNC11(3)) {
		FUNC8(start, end);
		if (vma->vm_flags & VM_EXEC)
			FUNC9(start, end);
		FUNC7(vma, start, end);
		return;
	}

	pgd = vma->vm_mm->pgd;
	for (addr = vma->vm_start; addr < vma->vm_end; addr += PAGE_SIZE) {
		unsigned long pfn;
		pte_t *ptep = FUNC10(pgd, addr);
		if (!ptep)
			continue;
		pfn = FUNC13(*ptep);
		if (FUNC12(pfn)) {
			if (FUNC14(vma->vm_mm->context)) {
				FUNC6(vma, addr);
				FUNC2(vma, addr, FUNC1(pfn));
			} else {
				FUNC3(vma, addr, FUNC1(pfn));
			}
		}
	}
}