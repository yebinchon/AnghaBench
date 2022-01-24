#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct vmcs12 {int vm_exit_reason; unsigned long exit_qualification; int launch_state; int /*<<< orphan*/  vm_exit_msr_store_count; int /*<<< orphan*/  vm_exit_msr_store_addr; int /*<<< orphan*/  vm_entry_intr_info_field; void* vmx_instruction_info; void* vm_exit_instruction_len; scalar_t__ idt_vectoring_info_field; void* vm_exit_intr_info; } ;
struct TYPE_2__ {int nmi_injected; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_INFO_VALID_MASK ; 
 int /*<<< orphan*/  VMX_ABORT_SAVE_GUEST_MSR_FAIL ; 
 int VMX_EXIT_REASONS_FAILED_VMENTRY ; 
 int /*<<< orphan*/  VMX_INSTRUCTION_INFO ; 
 int /*<<< orphan*/  VM_EXIT_INSTRUCTION_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,struct vmcs12*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu, struct vmcs12 *vmcs12,
			   u32 exit_reason, u32 exit_intr_info,
			   unsigned long exit_qualification)
{
	/* update exit information fields: */
	vmcs12->vm_exit_reason = exit_reason;
	vmcs12->exit_qualification = exit_qualification;
	vmcs12->vm_exit_intr_info = exit_intr_info;

	vmcs12->idt_vectoring_info_field = 0;
	vmcs12->vm_exit_instruction_len = FUNC5(VM_EXIT_INSTRUCTION_LEN);
	vmcs12->vmx_instruction_info = FUNC5(VMX_INSTRUCTION_INFO);

	if (!(vmcs12->vm_exit_reason & VMX_EXIT_REASONS_FAILED_VMENTRY)) {
		vmcs12->launch_state = 1;

		/* vm_entry_intr_info_field is cleared on exit. Emulate this
		 * instead of reading the real value. */
		vmcs12->vm_entry_intr_info_field &= ~INTR_INFO_VALID_MASK;

		/*
		 * Transfer the event that L0 or L1 may wanted to inject into
		 * L2 to IDT_VECTORING_INFO_FIELD.
		 */
		FUNC4(vcpu, vmcs12);

		/*
		 * According to spec, there's no need to store the guest's
		 * MSRs if the exit is due to a VM-entry failure that occurs
		 * during or after loading the guest state. Since this exit
		 * does not fall in that category, we need to save the MSRs.
		 */
		if (FUNC3(vcpu,
					 vmcs12->vm_exit_msr_store_addr,
					 vmcs12->vm_exit_msr_store_count))
			FUNC2(vcpu,
					 VMX_ABORT_SAVE_GUEST_MSR_FAIL);
	}

	/*
	 * Drop what we picked up for L2 via vmx_complete_interrupts. It is
	 * preserved above and would only end up incorrectly in L1.
	 */
	vcpu->arch.nmi_injected = false;
	FUNC0(vcpu);
	FUNC1(vcpu);
}