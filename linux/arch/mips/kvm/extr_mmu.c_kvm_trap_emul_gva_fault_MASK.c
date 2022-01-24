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
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct kvm_mips_tlb* guest_tlb; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mips_tlb {int dummy; } ;
typedef  enum kvm_mips_fault_result { ____Placeholder_kvm_mips_fault_result } kvm_mips_fault_result ;

/* Variables and functions */
 unsigned long KVM_ENTRYHI_ASID ; 
 scalar_t__ KVM_GUEST_KSEG0 ; 
 scalar_t__ KVM_GUEST_KSEG23 ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int KVM_MIPS_GPA ; 
 int KVM_MIPS_GVA ; 
 int KVM_MIPS_MAPPED ; 
 int KVM_MIPS_TLB ; 
 int KVM_MIPS_TLBINV ; 
 int KVM_MIPS_TLBMOD ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_mips_tlb,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_mips_tlb,unsigned long) ; 
 unsigned long VPN2_MASK ; 
 int FUNC3 (struct kvm_vcpu*,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,struct kvm_mips_tlb*,unsigned long,int) ; 
 unsigned long FUNC6 (struct mips_coproc*) ; 

enum kvm_mips_fault_result FUNC7(struct kvm_vcpu *vcpu,
						   unsigned long gva,
						   bool write)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	struct kvm_mips_tlb *tlb;
	int index;

	if (FUNC0(gva) == KVM_GUEST_KSEG0) {
		if (FUNC4(gva, vcpu, write) < 0)
			return KVM_MIPS_GPA;
	} else if ((FUNC0(gva) < KVM_GUEST_KSEG0) ||
		   FUNC0(gva) == KVM_GUEST_KSEG23) {
		/* Address should be in the guest TLB */
		index = FUNC3(vcpu, (gva & VPN2_MASK) |
			  (FUNC6(cop0) & KVM_ENTRYHI_ASID));
		if (index < 0)
			return KVM_MIPS_TLB;
		tlb = &vcpu->arch.guest_tlb[index];

		/* Entry should be valid, and dirty for writes */
		if (!FUNC2(*tlb, gva))
			return KVM_MIPS_TLBINV;
		if (write && !FUNC1(*tlb, gva))
			return KVM_MIPS_TLBMOD;

		if (FUNC5(vcpu, tlb, gva, write))
			return KVM_MIPS_GPA;
	} else {
		return KVM_MIPS_GVA;
	}

	return KVM_MIPS_MAPPED;
}