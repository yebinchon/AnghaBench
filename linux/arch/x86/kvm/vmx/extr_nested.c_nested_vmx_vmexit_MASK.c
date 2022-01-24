#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vmcs12 {int cpu_based_vm_exec_control; int vm_exit_intr_info; int /*<<< orphan*/  vm_exit_intr_error_code; int /*<<< orphan*/  idt_vectoring_info_field; int /*<<< orphan*/  exit_qualification; int /*<<< orphan*/  vm_exit_reason; scalar_t__ tsc_offset; } ;
struct TYPE_9__ {int nested_run_pending; int change_vmcs01_virtual_apic_mode; int need_vmcs12_to_shadow_sync; scalar_t__ hv_evmcs; int /*<<< orphan*/ * pi_desc; int /*<<< orphan*/  pi_desc_map; int /*<<< orphan*/  virtual_apic_map; int /*<<< orphan*/ * apic_access_page; int /*<<< orphan*/  preemption_timer; } ;
struct TYPE_7__ {int /*<<< orphan*/  nr; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr; } ;
struct TYPE_8__ {TYPE_2__ guest; TYPE_1__ host; } ;
struct vcpu_vmx {scalar_t__ fail; TYPE_4__ nested; TYPE_3__ msr_autoload; int /*<<< orphan*/  vmcs01; } ;
struct TYPE_10__ {int /*<<< orphan*/  mp_state; int /*<<< orphan*/  tsc_offset; } ;
struct kvm_vcpu {TYPE_5__ arch; } ;

/* Variables and functions */
 int CPU_BASED_USE_TSC_OFFSETING ; 
 int EXIT_REASON_EXTERNAL_INTERRUPT ; 
 int INTR_INFO_VALID_MASK ; 
 int INTR_TYPE_EXT_INTR ; 
 int /*<<< orphan*/  KVM_ISA_VMX ; 
 int /*<<< orphan*/  KVM_MP_STATE_RUNNABLE ; 
 int /*<<< orphan*/  KVM_REQ_APIC_PAGE_RELOAD ; 
 int /*<<< orphan*/  SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ; 
 int /*<<< orphan*/  TSC_OFFSET ; 
 scalar_t__ VMXERR_ENTRY_INVALID_CONTROL_FIELD ; 
 int /*<<< orphan*/  VM_ENTRY_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VM_EXIT_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VM_INSTRUCTION_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_vmx*) ; 
 scalar_t__ enable_shadow_vmcs ; 
 struct vmcs12* FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ kvm_has_tsc_control ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,struct vmcs12*) ; 
 scalar_t__ FUNC13 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vmcs12*) ; 
 scalar_t__ FUNC15 (struct vmcs12*) ; 
 int nested_early_check ; 
 scalar_t__ FUNC16 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,struct vmcs12*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,struct vmcs12*) ; 
 struct vcpu_vmx* FUNC22 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC29 (struct kvm_vcpu*,int /*<<< orphan*/ *) ; 

void FUNC30(struct kvm_vcpu *vcpu, u32 exit_reason,
		       u32 exit_intr_info, unsigned long exit_qualification)
{
	struct vcpu_vmx *vmx = FUNC22(vcpu);
	struct vmcs12 *vmcs12 = FUNC3(vcpu);

	/* trying to cancel vmlaunch/vmresume is a bug */
	FUNC1(vmx->nested.nested_run_pending);

	FUNC10(vcpu);

	if (FUNC15(vmcs12))
		FUNC4(&FUNC22(vcpu)->nested.preemption_timer);

	if (vmcs12->cpu_based_vm_exec_control & CPU_BASED_USE_TSC_OFFSETING)
		vcpu->arch.tsc_offset -= vmcs12->tsc_offset;

	if (FUNC11(!vmx->fail)) {
		FUNC21(vcpu, vmcs12);

		if (exit_reason != -1)
			FUNC20(vcpu, vmcs12, exit_reason, exit_intr_info,
				       exit_qualification);

		/*
		 * Must happen outside of sync_vmcs02_to_vmcs12() as it will
		 * also be used to capture vmcs12 cache as part of
		 * capturing nVMX state for snapshot (migration).
		 *
		 * Otherwise, this flush will dirty guest memory at a
		 * point it is already assumed by user-space to be
		 * immutable.
		 */
		FUNC17(vcpu, vmcs12);
	} else {
		/*
		 * The only expected VM-instruction error is "VM entry with
		 * invalid control field(s)." Anything else indicates a
		 * problem with L0.  And we should never get here with a
		 * VMFail of any type if early consistency checks are enabled.
		 */
		FUNC1(FUNC24(VM_INSTRUCTION_ERROR) !=
			     VMXERR_ENTRY_INVALID_CONTROL_FIELD);
		FUNC1(nested_early_check);
	}

	FUNC29(vcpu, &vmx->vmcs01);

	/* Update any VMCS fields that might have changed while L2 ran */
	FUNC25(VM_EXIT_MSR_LOAD_COUNT, vmx->msr_autoload.host.nr);
	FUNC25(VM_ENTRY_MSR_LOAD_COUNT, vmx->msr_autoload.guest.nr);
	FUNC26(TSC_OFFSET, vcpu->arch.tsc_offset);

	if (kvm_has_tsc_control)
		FUNC2(vmx);

	if (vmx->nested.change_vmcs01_virtual_apic_mode) {
		vmx->nested.change_vmcs01_virtual_apic_mode = false;
		FUNC28(vcpu);
	} else if (!FUNC14(vmcs12) &&
		   FUNC13(vmcs12,
				   SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES)) {
		FUNC27(vcpu, true);
	}

	/* Unpin physical memory we referred to in vmcs02 */
	if (vmx->nested.apic_access_page) {
		FUNC8(vmx->nested.apic_access_page);
		vmx->nested.apic_access_page = NULL;
	}
	FUNC9(vcpu, &vmx->nested.virtual_apic_map, true);
	FUNC9(vcpu, &vmx->nested.pi_desc_map, true);
	vmx->nested.pi_desc = NULL;

	/*
	 * We are now running in L2, mmu_notifier will force to reload the
	 * page's hpa for L2 vmcs. Need to reload it for L1 before entering L1.
	 */
	FUNC7(KVM_REQ_APIC_PAGE_RELOAD, vcpu);

	if ((exit_reason != -1) && (enable_shadow_vmcs || vmx->nested.hv_evmcs))
		vmx->nested.need_vmcs12_to_shadow_sync = true;

	/* in case we halted in L2 */
	vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;

	if (FUNC11(!vmx->fail)) {
		/*
		 * TODO: SDM says that with acknowledge interrupt on
		 * exit, bit 31 of the VM-exit interrupt information
		 * (valid interrupt) is always set to 1 on
		 * EXIT_REASON_EXTERNAL_INTERRUPT, so we shouldn't
		 * need kvm_cpu_has_interrupt().  See the commit
		 * message for details.
		 */
		if (FUNC16(vcpu) &&
		    exit_reason == EXIT_REASON_EXTERNAL_INTERRUPT &&
		    FUNC6(vcpu)) {
			int irq = FUNC5(vcpu);
			FUNC0(irq < 0);
			vmcs12->vm_exit_intr_info = irq |
				INTR_INFO_VALID_MASK | INTR_TYPE_EXT_INTR;
		}

		if (exit_reason != -1)
			FUNC23(vmcs12->vm_exit_reason,
						       vmcs12->exit_qualification,
						       vmcs12->idt_vectoring_info_field,
						       vmcs12->vm_exit_intr_info,
						       vmcs12->vm_exit_intr_error_code,
						       KVM_ISA_VMX);

		FUNC12(vcpu, vmcs12);

		return;
	}

	/*
	 * After an early L2 VM-entry failure, we're now back
	 * in L1 which thinks it just finished a VMLAUNCH or
	 * VMRESUME instruction, so we need to set the failure
	 * flag and the VM-instruction error field of the VMCS
	 * accordingly, and skip the emulated instruction.
	 */
	(void)FUNC18(vcpu, VMXERR_ENTRY_INVALID_CONTROL_FIELD);

	/*
	 * Restore L1's host state to KVM's software model.  We're here
	 * because a consistency check was caught by hardware, which
	 * means some amount of guest state has been propagated to KVM's
	 * model and needs to be unwound to the host's state.
	 */
	FUNC19(vcpu);

	vmx->fail = 0;
}