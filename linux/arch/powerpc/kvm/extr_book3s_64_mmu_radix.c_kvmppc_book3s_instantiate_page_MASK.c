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
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pgdir; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_memory_slot {int flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_1G_pages; int /*<<< orphan*/  num_2M_pages; } ;
struct TYPE_5__ {int /*<<< orphan*/  lpid; int /*<<< orphan*/  pgtable; } ;
struct kvm {unsigned long mmu_notifier_seq; TYPE_3__ stat; TYPE_2__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int EFAULT ; 
 int KVM_MEM_LOG_DIRTY_PAGES ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned int PMD_SHIFT ; 
 unsigned long PMD_SIZE ; 
 unsigned int PUD_SHIFT ; 
 unsigned long PUD_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int RESUME_GUEST ; 
 int _PAGE_ACCESSED ; 
 int _PAGE_DIRTY ; 
 int _PAGE_EXEC ; 
 int _PAGE_WRITE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC2 (unsigned long,int,int,struct page**) ; 
 unsigned long FUNC3 (struct kvm_memory_slot*,unsigned long,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned long FUNC5 (struct kvm_memory_slot*,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int FUNC7 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct page* FUNC10 (unsigned long) ; 
 scalar_t__ FUNC11 (unsigned long) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(struct kvm_vcpu *vcpu,
				   unsigned long gpa,
				   struct kvm_memory_slot *memslot,
				   bool writing, bool kvm_ro,
				   pte_t *inserted_pte, unsigned int *levelp)
{
	struct kvm *kvm = vcpu->kvm;
	struct page *page = NULL;
	unsigned long mmu_seq;
	unsigned long hva, gfn = gpa >> PAGE_SHIFT;
	bool upgrade_write = false;
	bool *upgrade_p = &upgrade_write;
	pte_t pte, *ptep;
	unsigned int shift, level;
	int ret;
	bool large_enable;

	/* used to check for invalidations in progress */
	mmu_seq = kvm->mmu_notifier_seq;
	FUNC15();

	/*
	 * Do a fast check first, since __gfn_to_pfn_memslot doesn't
	 * do it with !atomic && !async, which is how we call it.
	 * We always ask for write permission since the common case
	 * is that the page is writable.
	 */
	hva = FUNC5(memslot, gfn);
	if (!kvm_ro && FUNC2(hva, 1, 1, &page) == 1) {
		upgrade_write = true;
	} else {
		unsigned long pfn;

		/* Call KVM generic code to do the slow-path check */
		pfn = FUNC3(memslot, gfn, false, NULL,
					   writing, upgrade_p);
		if (FUNC6(pfn))
			return -EFAULT;
		page = NULL;
		if (FUNC11(pfn)) {
			page = FUNC10(pfn);
			if (FUNC0(page))
				page = NULL;
		}
	}

	/*
	 * Read the PTE from the process' radix tree and use that
	 * so we get the shift and attribute bits.
	 */
	FUNC8();
	ptep = FUNC1(vcpu->arch.pgdir, hva, NULL, &shift);
	/*
	 * If the PTE disappeared temporarily due to a THP
	 * collapse, just return and let the guest try again.
	 */
	if (!ptep) {
		FUNC9();
		if (page)
			FUNC13(page);
		return RESUME_GUEST;
	}
	pte = *ptep;
	FUNC9();

	/* If we're logging dirty pages, always map single pages */
	large_enable = !(memslot->flags & KVM_MEM_LOG_DIRTY_PAGES);

	/* Get pte level from shift/size */
	if (large_enable && shift == PUD_SHIFT &&
	    (gpa & (PUD_SIZE - PAGE_SIZE)) ==
	    (hva & (PUD_SIZE - PAGE_SIZE))) {
		level = 2;
	} else if (large_enable && shift == PMD_SHIFT &&
		   (gpa & (PMD_SIZE - PAGE_SIZE)) ==
		   (hva & (PMD_SIZE - PAGE_SIZE))) {
		level = 1;
	} else {
		level = 0;
		if (shift > PAGE_SHIFT) {
			/*
			 * If the pte maps more than one page, bring over
			 * bits from the virtual address to get the real
			 * address of the specific single page we want.
			 */
			unsigned long rpnmask = (1ul << shift) - PAGE_SIZE;
			pte = FUNC4(FUNC12(pte) | (hva & rpnmask));
		}
	}

	pte = FUNC4(FUNC12(pte) | _PAGE_EXEC | _PAGE_ACCESSED);
	if (writing || upgrade_write) {
		if (FUNC12(pte) & _PAGE_WRITE)
			pte = FUNC4(FUNC12(pte) | _PAGE_DIRTY);
	} else {
		pte = FUNC4(FUNC12(pte) & ~(_PAGE_WRITE | _PAGE_DIRTY));
	}

	/* Allocate space in the tree and write the PTE */
	ret = FUNC7(kvm, kvm->arch.pgtable, pte, gpa, level,
				mmu_seq, kvm->arch.lpid, NULL, NULL);
	if (inserted_pte)
		*inserted_pte = pte;
	if (levelp)
		*levelp = level;

	if (page) {
		if (!ret && (FUNC12(pte) & _PAGE_WRITE))
			FUNC14(page);
		FUNC13(page);
	}

	/* Increment number of large pages if we (successfully) inserted one */
	if (!ret) {
		if (level == 1)
			kvm->stat.num_2M_pages++;
		else if (level == 2)
			kvm->stat.num_1G_pages++;
	}

	return ret;
}