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
struct TYPE_3__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int /*<<< orphan*/  emulation_required; TYPE_1__ rmode; } ;
struct TYPE_4__ {int efer; unsigned long cr0; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR0_READ_SHADOW ; 
 int EFER_LME ; 
 int /*<<< orphan*/  GUEST_CR0 ; 
 unsigned long KVM_VM_CR0_ALWAYS_OFF ; 
 unsigned long KVM_VM_CR0_ALWAYS_ON ; 
 unsigned long KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST ; 
 unsigned long X86_CR0_PE ; 
 unsigned long X86_CR0_PG ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ enable_ept ; 
 scalar_t__ enable_unrestricted_guest ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*,unsigned long,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC9(struct kvm_vcpu *vcpu, unsigned long cr0)
{
	struct vcpu_vmx *vmx = FUNC7(vcpu);
	unsigned long hw_cr0;

	hw_cr0 = (cr0 & ~KVM_VM_CR0_ALWAYS_OFF);
	if (enable_unrestricted_guest)
		hw_cr0 |= KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST;
	else {
		hw_cr0 |= KVM_VM_CR0_ALWAYS_ON;

		if (vmx->rmode.vm86_active && (cr0 & X86_CR0_PE))
			FUNC2(vcpu);

		if (!vmx->rmode.vm86_active && !(cr0 & X86_CR0_PE))
			FUNC3(vcpu);
	}

#ifdef CONFIG_X86_64
	if (vcpu->arch.efer & EFER_LME) {
		if (!is_paging(vcpu) && (cr0 & X86_CR0_PG))
			enter_lmode(vcpu);
		if (is_paging(vcpu) && !(cr0 & X86_CR0_PG))
			exit_lmode(vcpu);
	}
#endif

	if (enable_ept && !enable_unrestricted_guest)
		FUNC4(&hw_cr0, cr0, vcpu);

	FUNC8(CR0_READ_SHADOW, cr0);
	FUNC8(GUEST_CR0, hw_cr0);
	vcpu->arch.cr0 = cr0;

	/* depends on vcpu->arch.cr0 to be set to a new value */
	vmx->emulation_required = FUNC0(vcpu);
}