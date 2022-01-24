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
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_2__ {unsigned long cr3; int /*<<< orphan*/  regs_avail; int /*<<< orphan*/  walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 int /*<<< orphan*/  VCPU_EXREG_CR3 ; 
 unsigned long X86_CR3_PCID_NOFLUSH ; 
 int /*<<< orphan*/  X86_CR4_PCIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 unsigned long FUNC7 (struct kvm_vcpu*) ; 
 int FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ,int) ; 

int FUNC12(struct kvm_vcpu *vcpu, unsigned long cr3)
{
	bool skip_tlb_flush = false;
#ifdef CONFIG_X86_64
	bool pcid_enabled = kvm_read_cr4_bits(vcpu, X86_CR4_PCIDE);

	if (pcid_enabled) {
		skip_tlb_flush = cr3 & X86_CR3_PCID_NOFLUSH;
		cr3 &= ~X86_CR3_PCID_NOFLUSH;
	}
#endif

	if (cr3 == FUNC7(vcpu) && !FUNC10(vcpu)) {
		if (!skip_tlb_flush) {
			FUNC6(vcpu);
			FUNC4(KVM_REQ_TLB_FLUSH, vcpu);
		}
		return 0;
	}

	if (FUNC2(vcpu) &&
	    (cr3 & FUNC11(FUNC1(vcpu), 63)))
		return 1;
	else if (FUNC3(vcpu) &&
		 !FUNC9(vcpu, vcpu->arch.walk_mmu, cr3))
		return 1;

	FUNC5(vcpu, cr3, skip_tlb_flush);
	vcpu->arch.cr3 = cr3;
	FUNC0(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail);

	return 0;
}