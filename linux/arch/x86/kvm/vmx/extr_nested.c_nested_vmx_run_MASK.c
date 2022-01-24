#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {scalar_t__ shadow_vmcs; } ;
struct vmcs12 {int launch_state; scalar_t__ guest_activity_state; int vm_entry_intr_info_field; int cpu_based_vm_exec_control; int guest_rflags; TYPE_1__ hdr; } ;
struct TYPE_8__ {unsigned long long current_vmptr; int nested_run_pending; scalar_t__ hv_evmcs; } ;
struct TYPE_6__ {int l1tf_flush_l1d; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;
struct vcpu_vmx {TYPE_4__ nested; TYPE_3__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;
typedef  enum nvmx_vmentry_status { ____Placeholder_nvmx_vmentry_status } nvmx_vmentry_status ;

/* Variables and functions */
 int CPU_BASED_VIRTUAL_INTR_PENDING ; 
 int CPU_BASED_VIRTUAL_NMI_PENDING ; 
 scalar_t__ GUEST_ACTIVITY_HLT ; 
 int INTR_INFO_VALID_MASK ; 
 int KVM_X86_SHADOW_INT_MOV_SS ; 
 int NVMX_VMENTRY_KVM_INTERNAL_ERROR ; 
 int NVMX_VMENTRY_SUCCESS ; 
 int NVMX_VMENTRY_VMEXIT ; 
 int NVMX_VMENTRY_VMFAIL ; 
 int /*<<< orphan*/  VMXERR_ENTRY_EVENTS_BLOCKED_BY_MOV_SS ; 
 int /*<<< orphan*/  VMXERR_ENTRY_INVALID_CONTROL_FIELD ; 
 int /*<<< orphan*/  VMXERR_ENTRY_INVALID_HOST_STATE_FIELD ; 
 int /*<<< orphan*/  VMXERR_VMLAUNCH_NONCLEAR_VMCS ; 
 int /*<<< orphan*/  VMXERR_VMRESUME_NONLAUNCHED_VMCS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int X86_EFLAGS_IF ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_vmx*) ; 
 scalar_t__ enable_shadow_vmcs ; 
 struct vmcs12* FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*,int) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int) ; 
 struct vcpu_vmx* FUNC13 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC16(struct kvm_vcpu *vcpu, bool launch)
{
	struct vmcs12 *vmcs12;
	enum nvmx_vmentry_status status;
	struct vcpu_vmx *vmx = FUNC13(vcpu);
	u32 interrupt_shadow = FUNC15(vcpu);

	if (!FUNC8(vcpu))
		return 1;

	if (!FUNC12(vcpu, launch))
		return 1;

	if (!vmx->nested.hv_evmcs && vmx->nested.current_vmptr == -1ull)
		return FUNC10(vcpu);

	vmcs12 = FUNC3(vcpu);

	/*
	 * Can't VMLAUNCH or VMRESUME a shadow VMCS. Despite the fact
	 * that there *is* a valid VMCS pointer, RFLAGS.CF is set
	 * rather than RFLAGS.ZF, and no error number is stored to the
	 * VM-instruction error field.
	 */
	if (vmcs12->hdr.shadow_vmcs)
		return FUNC10(vcpu);

	if (vmx->nested.hv_evmcs) {
		FUNC1(vmx);
		/* Enlightened VMCS doesn't have launch state */
		vmcs12->launch_state = !launch;
	} else if (enable_shadow_vmcs) {
		FUNC2(vmx);
	}

	/*
	 * The nested entry process starts with enforcing various prerequisites
	 * on vmcs12 as required by the Intel SDM, and act appropriately when
	 * they fail: As the SDM explains, some conditions should cause the
	 * instruction to fail, while others will cause the instruction to seem
	 * to succeed, but return an EXIT_REASON_INVALID_STATE.
	 * To speed up the normal (success) code path, we should avoid checking
	 * for misconfigurations which will anyway be caught by the processor
	 * when using the merged vmcs02.
	 */
	if (interrupt_shadow & KVM_X86_SHADOW_INT_MOV_SS)
		return FUNC11(vcpu,
			VMXERR_ENTRY_EVENTS_BLOCKED_BY_MOV_SS);

	if (vmcs12->launch_state == launch)
		return FUNC11(vcpu,
			launch ? VMXERR_VMLAUNCH_NONCLEAR_VMCS
			       : VMXERR_VMRESUME_NONLAUNCHED_VMCS);

	if (FUNC6(vcpu, vmcs12))
		return FUNC11(vcpu, VMXERR_ENTRY_INVALID_CONTROL_FIELD);

	if (FUNC7(vcpu, vmcs12))
		return FUNC11(vcpu, VMXERR_ENTRY_INVALID_HOST_STATE_FIELD);

	/*
	 * We're finally done with prerequisite checking, and can start with
	 * the nested entry.
	 */
	vmx->nested.nested_run_pending = 1;
	status = FUNC9(vcpu, true);
	if (FUNC14(status != NVMX_VMENTRY_SUCCESS))
		goto vmentry_failed;

	/* Hide L1D cache contents from the nested guest.  */
	vmx->vcpu.arch.l1tf_flush_l1d = true;

	/*
	 * Must happen outside of nested_vmx_enter_non_root_mode() as it will
	 * also be used as part of restoring nVMX state for
	 * snapshot restore (migration).
	 *
	 * In this flow, it is assumed that vmcs12 cache was
	 * trasferred as part of captured nVMX state and should
	 * therefore not be read from guest memory (which may not
	 * exist on destination host yet).
	 */
	FUNC5(vcpu, vmcs12);

	/*
	 * If we're entering a halted L2 vcpu and the L2 vcpu won't be
	 * awakened by event injection or by an NMI-window VM-exit or
	 * by an interrupt-window VM-exit, halt the vcpu.
	 */
	if ((vmcs12->guest_activity_state == GUEST_ACTIVITY_HLT) &&
	    !(vmcs12->vm_entry_intr_info_field & INTR_INFO_VALID_MASK) &&
	    !(vmcs12->cpu_based_vm_exec_control & CPU_BASED_VIRTUAL_NMI_PENDING) &&
	    !((vmcs12->cpu_based_vm_exec_control & CPU_BASED_VIRTUAL_INTR_PENDING) &&
	      (vmcs12->guest_rflags & X86_EFLAGS_IF))) {
		vmx->nested.nested_run_pending = 0;
		return FUNC4(vcpu);
	}
	return 1;

vmentry_failed:
	vmx->nested.nested_run_pending = 0;
	if (status == NVMX_VMENTRY_KVM_INTERNAL_ERROR)
		return 0;
	if (status == NVMX_VMENTRY_VMEXIT)
		return 1;
	FUNC0(status != NVMX_VMENTRY_VMFAIL);
	return FUNC11(vcpu, VMXERR_ENTRY_INVALID_CONTROL_FIELD);
}