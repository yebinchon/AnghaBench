#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; unsigned long vm_pgoff; int /*<<< orphan*/  vm_page_prot; } ;
struct revmap_entry {unsigned long guest_rpte; } ;
struct page {int dummy; } ;
struct TYPE_10__ {unsigned long pgfault_addr; unsigned long* pgfault_hpte; long pgfault_index; TYPE_2__* pgfault_cache; } ;
struct kvm_vcpu {struct kvm* kvm; TYPE_3__ arch; } ;
struct kvm_run {int dummy; } ;
struct TYPE_8__ {unsigned long* rmap; } ;
struct kvm_memory_slot {int flags; unsigned long base_gfn; TYPE_1__ arch; } ;
struct TYPE_12__ {struct revmap_entry* rev; scalar_t__ virt; } ;
struct TYPE_11__ {int /*<<< orphan*/  mmu_ready; TYPE_5__ hpt; int /*<<< orphan*/  mmio_update; } ;
struct kvm {unsigned long mmu_notifier_seq; TYPE_4__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_14__ {TYPE_6__* mm; } ;
struct TYPE_13__ {int /*<<< orphan*/  pgd; int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_9__ {long mmio_update; unsigned long rpte; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 unsigned long DSISR_ISSTORE ; 
 int EFAULT ; 
 int /*<<< orphan*/  FOLL_WRITE ; 
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_G ; 
 unsigned long HPTE_R_I ; 
 unsigned long HPTE_R_KEY_HI ; 
 unsigned long HPTE_R_M ; 
 unsigned long HPTE_R_PP0 ; 
 unsigned long HPTE_R_R ; 
 unsigned long HPTE_R_RPN ; 
 unsigned long HPTE_R_W ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long KVMPPC_RMAP_RC_SHIFT ; 
 int KVM_MEMSLOT_INVALID ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int RESUME_GUEST ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int VM_PFNMAP ; 
 unsigned int VM_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 struct page* FUNC7 (struct page*) ; 
 unsigned long FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 TYPE_7__* current ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC15 (TYPE_6__*,unsigned long) ; 
 long FUNC16 (unsigned long,int,int /*<<< orphan*/ ,struct page**) ; 
 unsigned long FUNC17 (struct kvm_memory_slot*,unsigned long) ; 
 struct kvm_memory_slot* FUNC18 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long,int) ; 
 scalar_t__ FUNC20 (unsigned long) ; 
 unsigned long FUNC21 (unsigned long) ; 
 unsigned long FUNC22 (unsigned long) ; 
 unsigned long FUNC23 (unsigned long,unsigned long) ; 
 unsigned long FUNC24 (unsigned long,unsigned long) ; 
 unsigned long FUNC25 (unsigned long) ; 
 scalar_t__ FUNC26 (struct kvm*) ; 
 unsigned long FUNC27 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (struct kvm*,struct revmap_entry*,unsigned long*,long,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct kvm_run*,struct kvm_vcpu*,unsigned long,unsigned long) ; 
 int FUNC30 (struct kvm_run*,struct kvm_vcpu*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (struct kvm*,int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (unsigned long) ; 
 int /*<<< orphan*/  FUNC35 (unsigned long*) ; 
 scalar_t__ FUNC36 (struct kvm*,unsigned long) ; 
 unsigned long FUNC37 (struct page*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct page*) ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (struct kvm_vcpu*,unsigned long*,struct kvm_memory_slot*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC45 (struct kvm_vcpu*,unsigned long*,long) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC48 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *) ; 

int FUNC50(struct kvm_run *run, struct kvm_vcpu *vcpu,
				unsigned long ea, unsigned long dsisr)
{
	struct kvm *kvm = vcpu->kvm;
	unsigned long hpte[3], r;
	unsigned long hnow_v, hnow_r;
	__be64 *hptep;
	unsigned long mmu_seq, psize, pte_size;
	unsigned long gpa_base, gfn_base;
	unsigned long gpa, gfn, hva, pfn;
	struct kvm_memory_slot *memslot;
	unsigned long *rmap;
	struct revmap_entry *rev;
	struct page *page, *pages[1];
	long index, ret, npages;
	bool is_ci;
	unsigned int writing, write_ok;
	struct vm_area_struct *vma;
	unsigned long rcbits;
	long mmio_update;

	if (FUNC26(kvm))
		return FUNC29(run, vcpu, ea, dsisr);

	/*
	 * Real-mode code has already searched the HPT and found the
	 * entry we're interested in.  Lock the entry and check that
	 * it hasn't changed.  If it has, just return and re-execute the
	 * instruction.
	 */
	if (ea != vcpu->arch.pgfault_addr)
		return RESUME_GUEST;

	if (vcpu->arch.pgfault_cache) {
		mmio_update = FUNC5(&kvm->arch.mmio_update);
		if (mmio_update == vcpu->arch.pgfault_cache->mmio_update) {
			r = vcpu->arch.pgfault_cache->rpte;
			psize = FUNC27(vcpu->arch.pgfault_hpte[0],
						   r);
			gpa_base = r & HPTE_R_RPN & ~(psize - 1);
			gfn_base = gpa_base >> PAGE_SHIFT;
			gpa = gpa_base | (ea & (psize - 1));
			return FUNC30(run, vcpu, gpa, ea,
						dsisr & DSISR_ISSTORE);
		}
	}
	index = vcpu->arch.pgfault_index;
	hptep = (__be64 *)(kvm->arch.hpt.virt + (index << 4));
	rev = &kvm->arch.hpt.rev[index];
	FUNC39();
	while (!FUNC46(hptep, HPTE_V_HVLOCK))
		FUNC10();
	hpte[0] = FUNC6(hptep[0]) & ~HPTE_V_HVLOCK;
	hpte[1] = FUNC6(hptep[1]);
	hpte[2] = r = rev->guest_rpte;
	FUNC47(hptep, hpte[0]);
	FUNC40();

	if (FUNC9(CPU_FTR_ARCH_300)) {
		hpte[0] = FUNC23(hpte[0], hpte[1]);
		hpte[1] = FUNC22(hpte[1]);
	}
	if (hpte[0] != vcpu->arch.pgfault_hpte[0] ||
	    hpte[1] != vcpu->arch.pgfault_hpte[1])
		return RESUME_GUEST;

	/* Translate the logical address and get the page */
	psize = FUNC27(hpte[0], r);
	gpa_base = r & HPTE_R_RPN & ~(psize - 1);
	gfn_base = gpa_base >> PAGE_SHIFT;
	gpa = gpa_base | (ea & (psize - 1));
	gfn = gpa >> PAGE_SHIFT;
	memslot = FUNC18(kvm, gfn);

	FUNC44(vcpu, hpte, memslot, ea, dsisr);

	/* No memslot means it's an emulated MMIO region */
	if (!memslot || (memslot->flags & KVM_MEMSLOT_INVALID))
		return FUNC30(run, vcpu, gpa, ea,
					      dsisr & DSISR_ISSTORE);

	/*
	 * This should never happen, because of the slot_is_aligned()
	 * check in kvmppc_do_h_enter().
	 */
	if (gfn_base < memslot->base_gfn)
		return -EFAULT;

	/* used to check for invalidations in progress */
	mmu_seq = kvm->mmu_notifier_seq;
	FUNC43();

	ret = -EFAULT;
	is_ci = false;
	pfn = 0;
	page = NULL;
	pte_size = PAGE_SIZE;
	writing = (dsisr & DSISR_ISSTORE) != 0;
	/* If writing != 0, then the HPTE must allow writing, if we get here */
	write_ok = writing;
	hva = FUNC17(memslot, gfn);
	npages = FUNC16(hva, 1, writing ? FOLL_WRITE : 0, pages);
	if (npages < 1) {
		/* Check if it's an I/O mapping */
		FUNC12(&current->mm->mmap_sem);
		vma = FUNC15(current->mm, hva);
		if (vma && vma->vm_start <= hva && hva + psize <= vma->vm_end &&
		    (vma->vm_flags & VM_PFNMAP)) {
			pfn = vma->vm_pgoff +
				((hva - vma->vm_start) >> PAGE_SHIFT);
			pte_size = psize;
			is_ci = FUNC41(FUNC2((FUNC38(vma->vm_page_prot))));
			write_ok = vma->vm_flags & VM_WRITE;
		}
		FUNC49(&current->mm->mmap_sem);
		if (!pfn)
			goto out_put;
	} else {
		page = pages[0];
		pfn = FUNC37(page);
		if (FUNC0(page)) {
			page = FUNC7(page);
			pte_size <<= FUNC8(page);
		}
		/* if the guest wants write access, see if that is OK */
		if (!writing && FUNC20(r)) {
			pte_t *ptep, pte;
			unsigned long flags;
			/*
			 * We need to protect against page table destruction
			 * hugepage split and collapse.
			 */
			FUNC34(flags);
			ptep = FUNC14(current->mm->pgd,
						   hva, NULL, NULL);
			if (ptep) {
				pte = FUNC32(ptep, 1);
				if (FUNC3(pte))
					write_ok = 1;
			}
			FUNC33(flags);
		}
	}

	if (psize > pte_size)
		goto out_put;

	/* Check WIMG vs. the actual page we're accessing */
	if (!FUNC19(r, is_ci)) {
		if (is_ci)
			goto out_put;
		/*
		 * Allow guest to map emulated device memory as
		 * uncacheable, but actually make it cacheable.
		 */
		r = (r & ~(HPTE_R_W|HPTE_R_I|HPTE_R_G)) | HPTE_R_M;
	}

	/*
	 * Set the HPTE to point to pfn.
	 * Since the pfn is at PAGE_SIZE granularity, make sure we
	 * don't mask out lower-order bits if psize < PAGE_SIZE.
	 */
	if (psize < PAGE_SIZE)
		psize = PAGE_SIZE;
	r = (r & HPTE_R_KEY_HI) | (r & ~(HPTE_R_PP0 - psize)) |
					((pfn << PAGE_SHIFT) & ~(psize - 1));
	if (FUNC20(r) && !write_ok)
		r = FUNC21(r);
	ret = RESUME_GUEST;
	FUNC39();
	while (!FUNC46(hptep, HPTE_V_HVLOCK))
		FUNC10();
	hnow_v = FUNC6(hptep[0]);
	hnow_r = FUNC6(hptep[1]);
	if (FUNC9(CPU_FTR_ARCH_300)) {
		hnow_v = FUNC23(hnow_v, hnow_r);
		hnow_r = FUNC22(hnow_r);
	}

	/*
	 * If the HPT is being resized, don't update the HPTE,
	 * instead let the guest retry after the resize operation is complete.
	 * The synchronization for mmu_ready test vs. set is provided
	 * by the HPTE lock.
	 */
	if (!kvm->arch.mmu_ready)
		goto out_unlock;

	if ((hnow_v & ~HPTE_V_HVLOCK) != hpte[0] || hnow_r != hpte[1] ||
	    rev->guest_rpte != hpte[2])
		/* HPTE has been changed under us; let the guest retry */
		goto out_unlock;
	hpte[0] = (hpte[0] & ~HPTE_V_ABSENT) | HPTE_V_VALID;

	/* Always put the HPTE in the rmap chain for the page base address */
	rmap = &memslot->arch.rmap[gfn_base - memslot->base_gfn];
	FUNC35(rmap);

	/* Check if we might have been invalidated; let the guest retry if so */
	ret = RESUME_GUEST;
	if (FUNC36(vcpu->kvm, mmu_seq)) {
		FUNC48(rmap);
		goto out_unlock;
	}

	/* Only set R/C in real HPTE if set in both *rmap and guest_rpte */
	rcbits = *rmap >> KVMPPC_RMAP_RC_SHIFT;
	r &= rcbits | ~(HPTE_R_R | HPTE_R_C);

	if (FUNC6(hptep[0]) & HPTE_V_VALID) {
		/* HPTE was previously valid, so we need to invalidate it */
		FUNC48(rmap);
		hptep[0] |= FUNC11(HPTE_V_ABSENT);
		FUNC31(kvm, hptep, index);
		/* don't lose previous R and C bits */
		r |= FUNC6(hptep[1]) & (HPTE_R_R | HPTE_R_C);
	} else {
		FUNC28(kvm, rev, rmap, index, 0);
	}

	if (FUNC9(CPU_FTR_ARCH_300)) {
		r = FUNC24(hpte[0], r);
		hpte[0] = FUNC25(hpte[0]);
	}
	hptep[1] = FUNC11(r);
	FUNC13();
	FUNC4(hptep, hpte[0]);
	asm volatile("ptesync" : : : "memory");
	FUNC40();
	if (page && FUNC20(r))
		FUNC1(page);

 out_put:
	FUNC45(vcpu, hpte, ret);

	if (page) {
		/*
		 * We drop pages[0] here, not page because page might
		 * have been set to the head page of a compound, but
		 * we have to drop the reference on the correct tail
		 * page to match the get inside gup()
		 */
		FUNC42(pages[0]);
	}
	return ret;

 out_unlock:
	FUNC4(hptep, FUNC6(hptep[0]));
	FUNC40();
	goto out_put;
}