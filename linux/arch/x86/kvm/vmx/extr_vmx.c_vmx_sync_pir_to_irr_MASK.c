#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pir; } ;
struct vcpu_vmx {TYPE_2__ pi_desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct vcpu_vmx* FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC12(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC10(vcpu);
	int max_irr;
	bool max_irr_updated;

	FUNC0(!vcpu->arch.apicv_active);
	if (FUNC8(&vmx->pi_desc)) {
		FUNC7(&vmx->pi_desc);
		/*
		 * IOMMU can write to PID.ON, so the barrier matters even on UP.
		 * But on x86 this is just a compiler barrier anyway.
		 */
		FUNC9();
		max_irr_updated =
			FUNC2(vcpu, vmx->pi_desc.pir, &max_irr);

		/*
		 * If we are running L2 and L1 has a new pending interrupt
		 * which can be injected, we should re-evaluate
		 * what should be done with this new L1 interrupt.
		 * If L1 intercepts external-interrupts, we should
		 * exit from L2 to L1. Otherwise, interrupt should be
		 * delivered directly to L2.
		 */
		if (FUNC1(vcpu) && max_irr_updated) {
			if (FUNC6(vcpu))
				FUNC5(vcpu);
			else
				FUNC4(KVM_REQ_EVENT, vcpu);
		}
	} else {
		max_irr = FUNC3(vcpu);
	}
	FUNC11(vcpu, max_irr);
	return max_irr;
}