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
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct flush_cache_page_args {unsigned long addr; int /*<<< orphan*/  pfn; struct vm_area_struct* vma; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  R4K_HIT ; 
 int VM_EXEC ; 
 int _PAGE_VALID ; 
 scalar_t__ cpu_has_dc_aliases ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 scalar_t__ cpu_has_vtag_icache ; 
 int /*<<< orphan*/  cpu_icache_snoops_remote_store ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct page*) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long) ; 

__attribute__((used)) static inline void FUNC20(void *args)
{
	struct flush_cache_page_args *fcp_args = args;
	struct vm_area_struct *vma = fcp_args->vma;
	unsigned long addr = fcp_args->addr;
	struct page *page = FUNC8(fcp_args->pfn);
	int exec = vma->vm_flags & VM_EXEC;
	struct mm_struct *mm = vma->vm_mm;
	int map_coherent = 0;
	pgd_t *pgdp;
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;
	void *vaddr;

	/*
	 * If owns no valid ASID yet, cannot possibly have gotten
	 * this page into the cache.
	 */
	if (!FUNC2(mm, R4K_HIT))
		return;

	addr &= PAGE_MASK;
	pgdp = FUNC9(mm, addr);
	pudp = FUNC14(pgdp, addr);
	pmdp = FUNC10(pudp, addr);
	ptep = FUNC11(pmdp, addr);

	/*
	 * If the page isn't marked valid, the page cannot possibly be
	 * in the cache.
	 */
	if (!(FUNC12(*ptep)))
		return;

	if ((mm == current->active_mm) && (FUNC13(*ptep) & _PAGE_VALID))
		vaddr = NULL;
	else {
		/*
		 * Use kmap_coherent or kmap_atomic to do flushes for
		 * another ASID than the current one.
		 */
		map_coherent = (cpu_has_dc_aliases &&
				FUNC7(page) &&
				!FUNC0(page));
		if (map_coherent)
			vaddr = FUNC4(page, addr);
		else
			vaddr = FUNC3(page);
		addr = (unsigned long)vaddr;
	}

	if (cpu_has_dc_aliases || (exec && !cpu_has_ic_fills_f_dc)) {
		vaddr ? FUNC15(addr) :
			FUNC16(addr);
		if (exec && !cpu_icache_snoops_remote_store)
			FUNC19(addr);
	}
	if (exec) {
		if (vaddr && cpu_has_vtag_icache && mm == current->active_mm) {
			FUNC1(mm);
		} else
			vaddr ? FUNC17(addr) :
				FUNC18(addr);
	}

	if (vaddr) {
		if (map_coherent)
			FUNC6();
		else
			FUNC5(vaddr);
	}
}