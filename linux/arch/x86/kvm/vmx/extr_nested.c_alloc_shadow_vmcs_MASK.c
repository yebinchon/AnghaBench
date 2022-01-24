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
struct vmcs {int dummy; } ;
struct loaded_vmcs {struct vmcs* shadow_vmcs; } ;
struct vcpu_vmx {struct loaded_vmcs vmcs01; struct loaded_vmcs* loaded_vmcs; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vmcs* FUNC1 (int) ; 
 struct vcpu_vmx* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmcs*) ; 

__attribute__((used)) static struct vmcs *FUNC4(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC2(vcpu);
	struct loaded_vmcs *loaded_vmcs = vmx->loaded_vmcs;

	/*
	 * We should allocate a shadow vmcs for vmcs01 only when L1
	 * executes VMXON and free it when L1 executes VMXOFF.
	 * As it is invalid to execute VMXON twice, we shouldn't reach
	 * here when vmcs01 already have an allocated shadow vmcs.
	 */
	FUNC0(loaded_vmcs == &vmx->vmcs01 && loaded_vmcs->shadow_vmcs);

	if (!loaded_vmcs->shadow_vmcs) {
		loaded_vmcs->shadow_vmcs = FUNC1(true);
		if (loaded_vmcs->shadow_vmcs)
			FUNC3(loaded_vmcs->shadow_vmcs);
	}
	return loaded_vmcs->shadow_vmcs;
}