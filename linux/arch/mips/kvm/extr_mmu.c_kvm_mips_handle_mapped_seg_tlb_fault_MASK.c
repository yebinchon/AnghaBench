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
struct TYPE_2__ {int /*<<< orphan*/  pc; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm_mips_tlb {long* tlb_lo; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 long ENTRYLO_V ; 
 unsigned long KVM_GUEST_COMMPAGE_ADDR ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 size_t FUNC1 (struct kvm_mips_tlb,unsigned long) ; 
 unsigned long VPN2_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,unsigned long,int,int) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct kvm_vcpu *vcpu,
					 struct kvm_mips_tlb *tlb,
					 unsigned long gva,
					 bool write_fault)
{
	struct kvm *kvm = vcpu->kvm;
	long tlb_lo[2];
	pte_t pte_gpa[2], *ptep_buddy, *ptep_gva;
	unsigned int idx = FUNC1(*tlb, gva);
	bool kernel = FUNC0(vcpu);

	tlb_lo[0] = tlb->tlb_lo[0];
	tlb_lo[1] = tlb->tlb_lo[1];

	/*
	 * The commpage address must not be mapped to anything else if the guest
	 * TLB contains entries nearby, or commpage accesses will break.
	 */
	if (!((gva ^ KVM_GUEST_COMMPAGE_ADDR) & VPN2_MASK & (PAGE_MASK << 1)))
		tlb_lo[FUNC1(*tlb, KVM_GUEST_COMMPAGE_ADDR)] = 0;

	/* Get the GPA page table entry */
	if (FUNC7(vcpu, FUNC10(tlb_lo[idx]),
			      write_fault, &pte_gpa[idx], NULL) < 0)
		return -1;

	/* And its GVA buddy's GPA page table entry if it also exists */
	pte_gpa[!idx] = FUNC11(0, FUNC2(0));
	if (tlb_lo[!idx] & ENTRYLO_V) {
		FUNC12(&kvm->mmu_lock);
		ptep_buddy = FUNC8(kvm, NULL,
					FUNC10(tlb_lo[!idx]));
		if (ptep_buddy)
			pte_gpa[!idx] = *ptep_buddy;
		FUNC13(&kvm->mmu_lock);
	}

	/* Get the GVA page table entry pair */
	ptep_gva = FUNC9(vcpu, gva & ~PAGE_SIZE);
	if (!ptep_gva) {
		FUNC4("No ptep for gva %lx\n", gva);
		return -1;
	}

	/* Copy a pair of entries from GPA page table to GVA page table */
	ptep_gva[0] = FUNC5(pte_gpa[0], tlb_lo[0]);
	ptep_gva[1] = FUNC5(pte_gpa[1], tlb_lo[1]);

	/* Invalidate this entry in the TLB, current guest mode ASID only */
	FUNC6(vcpu, gva, !kernel, kernel);

	FUNC3("@ %#lx tlb_lo0: 0x%08lx tlb_lo1: 0x%08lx\n", vcpu->arch.pc,
		  tlb->tlb_lo[0], tlb->tlb_lo[1]);

	return 0;
}