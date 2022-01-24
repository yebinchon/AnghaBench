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
struct vmcs12 {int vm_exit_controls; int vm_entry_controls; int /*<<< orphan*/  guest_ia32_efer; int /*<<< orphan*/  guest_dr7; int /*<<< orphan*/  guest_intr_status; void* guest_linear_address; void* guest_pdptr3; void* guest_pdptr2; void* guest_pdptr1; void* guest_pdptr0; void* guest_cr3; int /*<<< orphan*/  vmx_preemption_timer_value; int /*<<< orphan*/  guest_activity_state; void* guest_interruptibility_info; void* guest_sysenter_eip; void* guest_sysenter_esp; void* guest_sysenter_cs; void* guest_ss_ar_bytes; void* guest_cs_ar_bytes; void* guest_rflags; int /*<<< orphan*/  guest_rip; int /*<<< orphan*/  guest_rsp; int /*<<< orphan*/  guest_cr4; int /*<<< orphan*/  guest_cr0; } ;
struct TYPE_3__ {int need_sync_vmcs02_to_vmcs12_rare; scalar_t__ hv_evmcs; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct TYPE_4__ {scalar_t__ mp_state; int /*<<< orphan*/  efer; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_ACTIVITY_ACTIVE ; 
 int /*<<< orphan*/  GUEST_ACTIVITY_HLT ; 
 int /*<<< orphan*/  GUEST_CR3 ; 
 int /*<<< orphan*/  GUEST_CS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_INTR_STATUS ; 
 int /*<<< orphan*/  GUEST_LINEAR_ADDRESS ; 
 int /*<<< orphan*/  GUEST_PDPTR0 ; 
 int /*<<< orphan*/  GUEST_PDPTR1 ; 
 int /*<<< orphan*/  GUEST_PDPTR2 ; 
 int /*<<< orphan*/  GUEST_PDPTR3 ; 
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 int /*<<< orphan*/  GUEST_SS_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_SYSENTER_CS ; 
 int /*<<< orphan*/  GUEST_SYSENTER_EIP ; 
 int /*<<< orphan*/  GUEST_SYSENTER_ESP ; 
 scalar_t__ KVM_MP_STATE_HALTED ; 
 int VM_ENTRY_IA32E_MODE ; 
 int VM_EXIT_SAVE_DEBUG_CONTROLS ; 
 int VM_EXIT_SAVE_IA32_EFER ; 
 int VM_EXIT_SAVE_VMX_PREEMPTION_TIMER ; 
 scalar_t__ enable_ept ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct vmcs12*) ; 
 scalar_t__ FUNC5 (struct vmcs12*) ; 
 scalar_t__ FUNC6 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct vmcs12*) ; 
 struct vcpu_vmx* FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC17(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12)
{
	struct vcpu_vmx *vmx = FUNC8(vcpu);

	if (vmx->nested.hv_evmcs)
		FUNC7(vcpu, vmcs12);

	vmx->nested.need_sync_vmcs02_to_vmcs12_rare = !vmx->nested.hv_evmcs;

	vmcs12->guest_cr0 = FUNC10(vcpu, vmcs12);
	vmcs12->guest_cr4 = FUNC11(vcpu, vmcs12);

	vmcs12->guest_rsp = FUNC3(vcpu);
	vmcs12->guest_rip = FUNC2(vcpu);
	vmcs12->guest_rflags = FUNC15(GUEST_RFLAGS);

	vmcs12->guest_cs_ar_bytes = FUNC13(GUEST_CS_AR_BYTES);
	vmcs12->guest_ss_ar_bytes = FUNC13(GUEST_SS_AR_BYTES);

	vmcs12->guest_sysenter_cs = FUNC13(GUEST_SYSENTER_CS);
	vmcs12->guest_sysenter_esp = FUNC15(GUEST_SYSENTER_ESP);
	vmcs12->guest_sysenter_eip = FUNC15(GUEST_SYSENTER_EIP);

	vmcs12->guest_interruptibility_info =
		FUNC13(GUEST_INTERRUPTIBILITY_INFO);

	if (vcpu->arch.mp_state == KVM_MP_STATE_HALTED)
		vmcs12->guest_activity_state = GUEST_ACTIVITY_HLT;
	else
		vmcs12->guest_activity_state = GUEST_ACTIVITY_ACTIVE;

	if (FUNC5(vmcs12) &&
	    vmcs12->vm_exit_controls & VM_EXIT_SAVE_VMX_PREEMPTION_TIMER)
			vmcs12->vmx_preemption_timer_value =
				FUNC16(vcpu);

	/*
	 * In some cases (usually, nested EPT), L2 is allowed to change its
	 * own CR3 without exiting. If it has changed it, we must keep it.
	 * Of course, if L0 is using shadow page tables, GUEST_CR3 was defined
	 * by L0, not L1 or L2, so we mustn't unconditionally copy it to vmcs12.
	 *
	 * Additionally, restore L2's PDPTR to vmcs12.
	 */
	if (enable_ept) {
		vmcs12->guest_cr3 = FUNC15(GUEST_CR3);
		if (FUNC4(vmcs12) && FUNC0(vcpu)) {
			vmcs12->guest_pdptr0 = FUNC14(GUEST_PDPTR0);
			vmcs12->guest_pdptr1 = FUNC14(GUEST_PDPTR1);
			vmcs12->guest_pdptr2 = FUNC14(GUEST_PDPTR2);
			vmcs12->guest_pdptr3 = FUNC14(GUEST_PDPTR3);
		}
	}

	vmcs12->guest_linear_address = FUNC15(GUEST_LINEAR_ADDRESS);

	if (FUNC6(vmcs12))
		vmcs12->guest_intr_status = FUNC12(GUEST_INTR_STATUS);

	vmcs12->vm_entry_controls =
		(vmcs12->vm_entry_controls & ~VM_ENTRY_IA32E_MODE) |
		(FUNC9(FUNC8(vcpu)) & VM_ENTRY_IA32E_MODE);

	if (vmcs12->vm_exit_controls & VM_EXIT_SAVE_DEBUG_CONTROLS)
		FUNC1(vcpu, 7, (unsigned long *)&vmcs12->guest_dr7);

	if (vmcs12->vm_exit_controls & VM_EXIT_SAVE_IA32_EFER)
		vmcs12->guest_ia32_efer = vcpu->arch.efer;
}