#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {scalar_t__ vm_mm; int vm_flags; } ;
struct page {int /*<<< orphan*/  flags; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_6__ {scalar_t__ active_mm; } ;
struct TYPE_4__ {scalar_t__ n_aliases; } ;
struct TYPE_5__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 scalar_t__ NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PG_dcache_clean ; 
 int VM_EXEC ; 
 int _PAGE_PRESENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* current ; 
 TYPE_2__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 struct page* FUNC8 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long shm_align_mask ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(void *args)
{
	struct flusher_data *data = args;
	struct vm_area_struct *vma;
	struct page *page;
	unsigned long address, pfn, phys;
	int map_coherent = 0;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	void *vaddr;

	vma = data->vma;
	address = data->addr1 & PAGE_MASK;
	pfn = data->addr2;
	phys = pfn << PAGE_SHIFT;
	page = FUNC8(pfn);

	if (FUNC0(FUNC14(), vma->vm_mm) == NO_CONTEXT)
		return;

	pgd = FUNC9(vma->vm_mm, address);
	pud = FUNC13(pgd, address);
	pmd = FUNC10(pud, address);
	pte = FUNC11(pmd, address);

	/* If the page isn't present, there is nothing to do here. */
	if (!(FUNC12(*pte) & _PAGE_PRESENT))
		return;

	if (vma->vm_mm == current->active_mm)
		vaddr = NULL;
	else {
		/*
		 * Use kmap_coherent or kmap_atomic to do flushes for
		 * another ASID than the current one.
		 */
		map_coherent = (current_cpu_data.dcache.n_aliases &&
			FUNC15(PG_dcache_clean, &page->flags) &&
			FUNC7(page));
		if (map_coherent)
			vaddr = FUNC4(page, address);
		else
			vaddr = FUNC3(page);

		address = (unsigned long)vaddr;
	}

	FUNC1(CACHE_OC_ADDRESS_ARRAY |
			(address & shm_align_mask), phys);

	if (vma->vm_flags & VM_EXEC)
		FUNC2();

	if (vaddr) {
		if (map_coherent)
			FUNC6(vaddr);
		else
			FUNC5(vaddr);
	}
}