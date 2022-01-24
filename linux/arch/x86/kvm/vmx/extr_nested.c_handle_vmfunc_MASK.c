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
typedef  int u32 ;
struct vmcs12 {int vm_function_control; } ;
struct vcpu_vmx {int /*<<< orphan*/  exit_reason; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  UD_VECTOR ; 
 int /*<<< orphan*/  VM_EXIT_INTR_INFO ; 
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC7(vcpu);
	struct vmcs12 *vmcs12;
	u32 function = FUNC3(vcpu);

	/*
	 * VMFUNC is only supported for nested guests, but we always enable the
	 * secondary control for simplicity; for non-nested mode, fake that we
	 * didn't by injecting #UD.
	 */
	if (!FUNC1(vcpu)) {
		FUNC2(vcpu, UD_VECTOR);
		return 1;
	}

	vmcs12 = FUNC0(vcpu);
	if ((vmcs12->vm_function_control & (1 << function)) == 0)
		goto fail;

	switch (function) {
	case 0:
		if (FUNC5(vcpu, vmcs12))
			goto fail;
		break;
	default:
		goto fail;
	}
	return FUNC4(vcpu);

fail:
	FUNC6(vcpu, vmx->exit_reason,
			  FUNC8(VM_EXIT_INTR_INFO),
			  FUNC9(EXIT_QUALIFICATION));
	return 1;
}