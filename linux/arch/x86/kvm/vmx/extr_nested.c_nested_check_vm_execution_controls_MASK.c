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
struct vmcs12 {scalar_t__ cr3_target_count; int vm_function_control; int /*<<< orphan*/  eptp_list_address; int /*<<< orphan*/  ept_pointer; int /*<<< orphan*/  virtual_processor_id; int /*<<< orphan*/  secondary_vm_exec_control; int /*<<< orphan*/  cpu_based_vm_exec_control; int /*<<< orphan*/  pin_based_vm_exec_control; } ;
struct TYPE_3__ {int vmfunc_controls; int /*<<< orphan*/  secondary_ctls_high; int /*<<< orphan*/  secondary_ctls_low; int /*<<< orphan*/  procbased_ctls_high; int /*<<< orphan*/  procbased_ctls_low; int /*<<< orphan*/  pinbased_ctls_high; int /*<<< orphan*/  pinbased_ctls_low; } ;
struct TYPE_4__ {TYPE_1__ msrs; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_BASED_ACTIVATE_SECONDARY_CONTROLS ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vmcs12*) ; 
 scalar_t__ FUNC3 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmcs12*) ; 
 scalar_t__ FUNC5 (struct vmcs12*) ; 
 scalar_t__ FUNC6 (struct vmcs12*) ; 
 scalar_t__ FUNC7 (struct vmcs12*) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC11 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC12 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC13 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC14 (struct vmcs12*) ; 
 scalar_t__ FUNC15 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC16 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC17 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC18 (struct kvm_vcpu*,struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC20 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct kvm_vcpu *vcpu,
                                              struct vmcs12 *vmcs12)
{
	struct vcpu_vmx *vmx = FUNC20(vcpu);

	if (FUNC0(!FUNC22(vmcs12->pin_based_vm_exec_control,
				   vmx->nested.msrs.pinbased_ctls_low,
				   vmx->nested.msrs.pinbased_ctls_high)) ||
	    FUNC0(!FUNC22(vmcs12->cpu_based_vm_exec_control,
				   vmx->nested.msrs.procbased_ctls_low,
				   vmx->nested.msrs.procbased_ctls_high)))
		return -EINVAL;

	if (FUNC1(vmcs12, CPU_BASED_ACTIVATE_SECONDARY_CONTROLS) &&
	    FUNC0(!FUNC22(vmcs12->secondary_vm_exec_control,
				   vmx->nested.msrs.secondary_ctls_low,
				   vmx->nested.msrs.secondary_ctls_high)))
		return -EINVAL;

	if (FUNC0(vmcs12->cr3_target_count > FUNC8(vcpu)) ||
	    FUNC11(vcpu, vmcs12) ||
	    FUNC13(vcpu, vmcs12) ||
	    FUNC17(vcpu, vmcs12) ||
	    FUNC9(vcpu, vmcs12) ||
	    FUNC10(vcpu, vmcs12) ||
	    FUNC14(vmcs12) ||
	    FUNC15(vcpu, vmcs12) ||
	    FUNC18(vcpu, vmcs12) ||
	    FUNC12(vcpu, vmcs12) ||
	    FUNC16(vcpu, vmcs12) ||
	    FUNC0(FUNC7(vmcs12) && !vmcs12->virtual_processor_id))
		return -EINVAL;

	if (!FUNC4(vmcs12) &&
	    FUNC5(vmcs12))
		return -EINVAL;

	if (FUNC2(vmcs12) &&
	    FUNC0(!FUNC21(vcpu, vmcs12->ept_pointer)))
		return -EINVAL;

	if (FUNC6(vmcs12)) {
		if (FUNC0(vmcs12->vm_function_control &
		       ~vmx->nested.msrs.vmfunc_controls))
			return -EINVAL;

		if (FUNC3(vmcs12)) {
			if (FUNC0(!FUNC2(vmcs12)) ||
			    FUNC0(!FUNC19(vcpu, vmcs12->eptp_list_address)))
				return -EINVAL;
		}
	}

	return 0;
}