#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ (* set_cr4 ) (struct kvm_vcpu*,unsigned long) ;} ;

/* Variables and functions */
 int X86_CR3_PCID_MASK ; 
 unsigned long X86_CR4_OSXSAVE ; 
 unsigned long X86_CR4_PAE ; 
 unsigned long X86_CR4_PCIDE ; 
 unsigned long X86_CR4_PGE ; 
 unsigned long X86_CR4_PKE ; 
 unsigned long X86_CR4_PSE ; 
 unsigned long X86_CR4_SMAP ; 
 unsigned long X86_CR4_SMEP ; 
 int /*<<< orphan*/  X86_FEATURE_PCID ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 unsigned long FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*,unsigned long) ; 

int FUNC10(struct kvm_vcpu *vcpu, unsigned long cr4)
{
	unsigned long old_cr4 = FUNC5(vcpu);
	unsigned long pdptr_bits = X86_CR4_PGE | X86_CR4_PSE | X86_CR4_PAE |
				   X86_CR4_SMEP | X86_CR4_SMAP | X86_CR4_PKE;

	if (FUNC7(vcpu, cr4))
		return 1;

	if (FUNC1(vcpu)) {
		if (!(cr4 & X86_CR4_PAE))
			return 1;
	} else if (FUNC2(vcpu) && (cr4 & X86_CR4_PAE)
		   && ((cr4 ^ old_cr4) & pdptr_bits)
		   && !FUNC8(vcpu, vcpu->arch.walk_mmu,
				   FUNC4(vcpu)))
		return 1;

	if ((cr4 & X86_CR4_PCIDE) && !(old_cr4 & X86_CR4_PCIDE)) {
		if (!FUNC0(vcpu, X86_FEATURE_PCID))
			return 1;

		/* PCID can not be enabled when cr3[11:0]!=000H or EFER.LMA=0 */
		if ((FUNC4(vcpu) & X86_CR3_PCID_MASK) || !FUNC1(vcpu))
			return 1;
	}

	if (kvm_x86_ops->set_cr4(vcpu, cr4))
		return 1;

	if (((cr4 ^ old_cr4) & pdptr_bits) ||
	    (!(cr4 & X86_CR4_PCIDE) && (old_cr4 & X86_CR4_PCIDE)))
		FUNC3(vcpu);

	if ((cr4 ^ old_cr4) & (X86_CR4_OSXSAVE | X86_CR4_PKE))
		FUNC6(vcpu);

	return 0;
}