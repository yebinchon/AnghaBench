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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ thp_pte_count; scalar_t__ hugetlb_pte_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  MM_TSB_BASE ; 
 int /*<<< orphan*/  MM_TSB_HUGE ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned long PMD_SIZE ; 
 unsigned long PUD_SIZE ; 
 unsigned long REAL_HPAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ hypervisor ; 
 scalar_t__ FUNC4 (struct vm_area_struct*) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ tlb_type ; 

void FUNC11(struct vm_area_struct *vma, unsigned long address, pte_t *ptep)
{
	struct mm_struct *mm;
	unsigned long flags;
	bool is_huge_tsb;
	pte_t pte = *ptep;

	if (tlb_type != hypervisor) {
		unsigned long pfn = FUNC7(pte);

		if (FUNC5(pfn))
			FUNC1(pfn);
	}

	mm = vma->vm_mm;

	/* Don't insert a non-valid PTE into the TSB, we'll deadlock.  */
	if (!FUNC6(mm, pte))
		return;

	FUNC9(&mm->context.lock, flags);

	is_huge_tsb = false;
#if defined(CONFIG_HUGETLB_PAGE) || defined(CONFIG_TRANSPARENT_HUGEPAGE)
	if (mm->context.hugetlb_pte_count || mm->context.thp_pte_count) {
		unsigned long hugepage_size = PAGE_SIZE;

		if (is_vm_hugetlb_page(vma))
			hugepage_size = huge_page_size(hstate_vma(vma));

		if (hugepage_size >= PUD_SIZE) {
			unsigned long mask = 0x1ffc00000UL;

			/* Transfer bits [32:22] from address to resolve
			 * at 4M granularity.
			 */
			pte_val(pte) &= ~mask;
			pte_val(pte) |= (address & mask);
		} else if (hugepage_size >= PMD_SIZE) {
			/* We are fabricating 8MB pages using 4MB
			 * real hw pages.
			 */
			pte_val(pte) |= (address & (1UL << REAL_HPAGE_SHIFT));
		}

		if (hugepage_size >= PMD_SIZE) {
			__update_mmu_tsb_insert(mm, MM_TSB_HUGE,
				REAL_HPAGE_SHIFT, address, pte_val(pte));
			is_huge_tsb = true;
		}
	}
#endif
	if (!is_huge_tsb)
		FUNC0(mm, MM_TSB_BASE, PAGE_SHIFT,
					address, FUNC8(pte));

	FUNC10(&mm->context.lock, flags);
}