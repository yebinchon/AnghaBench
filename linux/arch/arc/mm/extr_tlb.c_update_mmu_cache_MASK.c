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
struct vm_area_struct {int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  unsigned long phys_addr_t ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PG_dc_clean ; 
 int VM_EXEC ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 struct page* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct vm_area_struct *vma, unsigned long vaddr_unaligned,
		      pte_t *ptep)
{
	unsigned long vaddr = vaddr_unaligned & PAGE_MASK;
	phys_addr_t paddr = FUNC7(*ptep) & PAGE_MASK;
	struct page *page = FUNC5(FUNC6(*ptep));

	FUNC4(vma, vaddr, ptep);

	if (page == FUNC0(0)) {
		return;
	}

	/*
	 * Exec page : Independent of aliasing/page-color considerations,
	 *	       since icache doesn't snoop dcache on ARC, any dirty
	 *	       K-mapping of a code page needs to be wback+inv so that
	 *	       icache fetch by userspace sees code correctly.
	 * !EXEC page: If K-mapping is NOT congruent to U-mapping, flush it
	 *	       so userspace sees the right data.
	 *  (Avoids the flush for Non-exec + congruent mapping case)
	 */
	if ((vma->vm_flags & VM_EXEC) ||
	     FUNC3(paddr, vaddr)) {

		int dirty = !FUNC8(PG_dc_clean, &page->flags);
		if (dirty) {
			/* wback + inv dcache lines (K-mapping) */
			FUNC1(paddr, paddr);

			/* invalidate any existing icache lines (U-mapping) */
			if (vma->vm_flags & VM_EXEC)
				FUNC2(paddr, vaddr);
		}
	}
}