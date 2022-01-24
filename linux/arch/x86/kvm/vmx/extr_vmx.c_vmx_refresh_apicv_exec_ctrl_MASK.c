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
struct vcpu_vmx {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int SECONDARY_EXEC_APIC_REGISTER_VIRT ; 
 int SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_vmx*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vcpu_vmx*,int) ; 
 struct vcpu_vmx* FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC6(vcpu);

	FUNC3(vmx, FUNC7(vmx));
	if (FUNC0()) {
		if (FUNC2(vcpu))
			FUNC5(vmx,
				      SECONDARY_EXEC_APIC_REGISTER_VIRT |
				      SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY);
		else
			FUNC4(vmx,
					SECONDARY_EXEC_APIC_REGISTER_VIRT |
					SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY);
	}

	if (FUNC1())
		FUNC8(vcpu);
}