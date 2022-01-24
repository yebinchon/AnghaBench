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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  temp_mm_state_t ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int _PAGE_GLOBAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  after_bootmem ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int FUNC13 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC16 (void*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ poking_addr ; 
 int /*<<< orphan*/  poking_mm ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct page* FUNC23 (void*) ; 
 struct page* FUNC24 (void*) ; 

__attribute__((used)) static void *FUNC25(void *addr, const void *opcode, size_t len)
{
	bool cross_page_boundary = FUNC16(addr) + len > PAGE_SIZE;
	struct page *pages[2] = {NULL};
	temp_mm_state_t prev;
	unsigned long flags;
	pte_t pte, *ptep;
	spinlock_t *ptl;
	pgprot_t pgprot;

	/*
	 * While boot memory allocator is running we cannot use struct pages as
	 * they are not yet initialized. There is no way to recover.
	 */
	FUNC0(!after_bootmem);

	if (!FUNC6((unsigned long)addr)) {
		pages[0] = FUNC24(addr);
		if (cross_page_boundary)
			pages[1] = FUNC24(addr + PAGE_SIZE);
	} else {
		pages[0] = FUNC23(addr);
		FUNC3(!FUNC1(pages[0]));
		if (cross_page_boundary)
			pages[1] = FUNC23(addr + PAGE_SIZE);
	}
	/*
	 * If something went wrong, crash and burn since recovery paths are not
	 * implemented.
	 */
	FUNC0(!pages[0] || (cross_page_boundary && !pages[1]));

	FUNC12(flags);

	/*
	 * Map the page without the global bit, as TLB flushing is done with
	 * flush_tlb_mm_range(), which is intended for non-global PTEs.
	 */
	pgprot = FUNC4(FUNC17(PAGE_KERNEL) & ~_PAGE_GLOBAL);

	/*
	 * The lock is not really needed, but this allows to avoid open-coding.
	 */
	ptep = FUNC8(poking_mm, poking_addr, &ptl);

	/*
	 * This must not fail; preallocated in poking_init().
	 */
	FUNC2(!ptep);

	pte = FUNC15(pages[0], pgprot);
	FUNC20(poking_mm, poking_addr, ptep, pte);

	if (cross_page_boundary) {
		pte = FUNC15(pages[1], pgprot);
		FUNC20(poking_mm, poking_addr + PAGE_SIZE, ptep + 1, pte);
	}

	/*
	 * Loading the temporary mm behaves as a compiler barrier, which
	 * guarantees that the PTE will be set at the time memcpy() is done.
	 */
	prev = FUNC22(poking_mm);

	FUNC9();
	FUNC14((u8 *)poking_addr + FUNC16(addr), opcode, len);
	FUNC10();

	/*
	 * Ensure that the PTE is only cleared after the instructions of memcpy
	 * were issued by using a compiler barrier.
	 */
	FUNC5();

	FUNC18(poking_mm, poking_addr, ptep);
	if (cross_page_boundary)
		FUNC18(poking_mm, poking_addr + PAGE_SIZE, ptep + 1);

	/*
	 * Loading the previous page-table hierarchy requires a serializing
	 * instruction that already allows the core to see the updated version.
	 * Xen-PV is assumed to serialize execution in a similar manner.
	 */
	FUNC21(prev);

	/*
	 * Flushing the TLB might involve IPIs, which would require enabled
	 * IRQs, but not if the mm is not used, as it is in this point.
	 */
	FUNC7(poking_mm, poking_addr, poking_addr +
			   (cross_page_boundary ? 2 : 1) * PAGE_SIZE,
			   PAGE_SHIFT, false);

	/*
	 * If the text does not match what we just wrote then something is
	 * fundamentally screwy; there's nothing we can really do about that.
	 */
	FUNC0(FUNC13(addr, opcode, len));

	FUNC19(ptep, ptl);
	FUNC11(flags);
	return addr;
}