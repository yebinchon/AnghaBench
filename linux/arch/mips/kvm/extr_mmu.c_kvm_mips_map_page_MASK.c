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
struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_2__ {struct kvm_mmu_memory_cache mmu_page_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {unsigned long mmu_notifier_seq; int /*<<< orphan*/  srcu; int /*<<< orphan*/  mmu_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  KVM_MMU_CACHE_MIN_PAGES ; 
 int /*<<< orphan*/  KVM_NR_MEM_OBJS ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long _PAGE_PRESENT ; 
 unsigned long _PAGE_WRITE ; 
 unsigned long __READABLE ; 
 unsigned long __WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct kvm_vcpu*,unsigned long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long _page_cachable_default ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,unsigned long,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct kvm*,struct kvm_mmu_memory_cache*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*,unsigned long) ; 
 scalar_t__ FUNC9 (struct kvm*,unsigned long) ; 
 int FUNC10 (struct kvm_mmu_memory_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC19(struct kvm_vcpu *vcpu, unsigned long gpa,
			     bool write_fault,
			     pte_t *out_entry, pte_t *out_buddy)
{
	struct kvm *kvm = vcpu->kvm;
	struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
	gfn_t gfn = gpa >> PAGE_SHIFT;
	int srcu_idx, err;
	kvm_pfn_t pfn;
	pte_t *ptep, entry, old_pte;
	bool writeable;
	unsigned long prot_bits;
	unsigned long mmu_seq;

	/* Try the fast path to handle old / clean pages */
	srcu_idx = FUNC17(&kvm->srcu);
	err = FUNC1(vcpu, gpa, write_fault, out_entry,
				      out_buddy);
	if (!err)
		goto out;

	/* We need a minimum of cached pages ready for page table creation */
	err = FUNC10(memcache, KVM_MMU_CACHE_MIN_PAGES,
				     KVM_NR_MEM_OBJS);
	if (err)
		goto out;

retry:
	/*
	 * Used to check for invalidations in progress, of the pfn that is
	 * returned by pfn_to_pfn_prot below.
	 */
	mmu_seq = kvm->mmu_notifier_seq;
	/*
	 * Ensure the read of mmu_notifier_seq isn't reordered with PTE reads in
	 * gfn_to_pfn_prot() (which calls get_user_pages()), so that we don't
	 * risk the page we get a reference to getting unmapped before we have a
	 * chance to grab the mmu_lock without mmu_notifier_retry() noticing.
	 *
	 * This smp_rmb() pairs with the effective smp_wmb() of the combination
	 * of the pte_unmap_unlock() after the PTE is zapped, and the
	 * spin_lock() in kvm_mmu_notifier_invalidate_<page|range_end>() before
	 * mmu_notifier_seq is incremented.
	 */
	FUNC14();

	/* Slow path - ask KVM core whether we can access this GPA */
	pfn = FUNC2(kvm, gfn, write_fault, &writeable);
	if (FUNC3(pfn)) {
		err = -EFAULT;
		goto out;
	}

	FUNC15(&kvm->mmu_lock);
	/* Check if an invalidation has taken place since we got pfn */
	if (FUNC9(kvm, mmu_seq)) {
		/*
		 * This can happen when mappings are changed asynchronously, but
		 * also synchronously if a COW is triggered by
		 * gfn_to_pfn_prot().
		 */
		FUNC16(&kvm->mmu_lock);
		FUNC5(pfn);
		goto retry;
	}

	/* Ensure page tables are allocated */
	ptep = FUNC4(kvm, memcache, gpa);

	/* Set up the PTE */
	prot_bits = _PAGE_PRESENT | __READABLE | _page_cachable_default;
	if (writeable) {
		prot_bits |= _PAGE_WRITE;
		if (write_fault) {
			prot_bits |= __WRITEABLE;
			FUNC8(kvm, gfn);
			FUNC7(pfn);
		}
	}
	entry = FUNC11(pfn, FUNC0(prot_bits));

	/* Write the PTE */
	old_pte = *ptep;
	FUNC13(ptep, entry);

	err = 0;
	if (out_entry)
		*out_entry = *ptep;
	if (out_buddy)
		*out_buddy = *FUNC12(ptep);

	FUNC16(&kvm->mmu_lock);
	FUNC5(pfn);
	FUNC6(pfn);
out:
	FUNC18(&kvm->srcu, srcu_idx);
	return err;
}