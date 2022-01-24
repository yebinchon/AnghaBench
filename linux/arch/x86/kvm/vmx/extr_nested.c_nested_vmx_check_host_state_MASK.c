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
struct vmcs12 {int host_cr4; int host_ia32_sysenter_esp; int host_ia32_sysenter_eip; int vm_exit_controls; int vm_entry_controls; int host_rip; int host_cs_selector; int host_ss_selector; int host_ds_selector; int host_es_selector; int host_fs_selector; int host_gs_selector; int host_tr_selector; int host_fs_base; int host_gs_base; int host_gdtr_base; int host_idtr_base; int host_tr_base; int host_ia32_efer; int /*<<< orphan*/  host_ia32_pat; int /*<<< orphan*/  host_cr3; int /*<<< orphan*/  host_cr0; } ;
struct TYPE_2__ {int efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EFER_LMA ; 
 int EFER_LME ; 
 int EINVAL ; 
 int SEGMENT_RPL_MASK ; 
 int SEGMENT_TI_MASK ; 
 int VM_ENTRY_IA32E_MODE ; 
 int VM_EXIT_HOST_ADDR_SPACE_SIZE ; 
 int VM_EXIT_LOAD_IA32_EFER ; 
 int VM_EXIT_LOAD_IA32_PAT ; 
 int X86_CR4_PAE ; 
 int X86_CR4_PCIDE ; 
 int FUNC1 (int,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu,
				       struct vmcs12 *vmcs12)
{
	bool ia32e;

	if (FUNC0(!FUNC5(vcpu, vmcs12->host_cr0)) ||
	    FUNC0(!FUNC6(vcpu, vmcs12->host_cr4)) ||
	    FUNC0(!FUNC4(vcpu, vmcs12->host_cr3)))
		return -EINVAL;

	if (FUNC0(FUNC1(vmcs12->host_ia32_sysenter_esp, vcpu)) ||
	    FUNC0(FUNC1(vmcs12->host_ia32_sysenter_eip, vcpu)))
		return -EINVAL;

	if ((vmcs12->vm_exit_controls & VM_EXIT_LOAD_IA32_PAT) &&
	    FUNC0(!FUNC2(vmcs12->host_ia32_pat)))
		return -EINVAL;

#ifdef CONFIG_X86_64
	ia32e = !!(vcpu->arch.efer & EFER_LMA);
#else
	ia32e = false;
#endif

	if (ia32e) {
		if (FUNC0(!(vmcs12->vm_exit_controls & VM_EXIT_HOST_ADDR_SPACE_SIZE)) ||
		    FUNC0(!(vmcs12->host_cr4 & X86_CR4_PAE)))
			return -EINVAL;
	} else {
		if (FUNC0(vmcs12->vm_exit_controls & VM_EXIT_HOST_ADDR_SPACE_SIZE) ||
		    FUNC0(vmcs12->vm_entry_controls & VM_ENTRY_IA32E_MODE) ||
		    FUNC0(vmcs12->host_cr4 & X86_CR4_PCIDE) ||
		    FUNC0((vmcs12->host_rip) >> 32))
			return -EINVAL;
	}

	if (FUNC0(vmcs12->host_cs_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_ss_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_ds_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_es_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_fs_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_gs_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_tr_selector & (SEGMENT_RPL_MASK | SEGMENT_TI_MASK)) ||
	    FUNC0(vmcs12->host_cs_selector == 0) ||
	    FUNC0(vmcs12->host_tr_selector == 0) ||
	    FUNC0(vmcs12->host_ss_selector == 0 && !ia32e))
		return -EINVAL;

#ifdef CONFIG_X86_64
	if (CC(is_noncanonical_address(vmcs12->host_fs_base, vcpu)) ||
	    CC(is_noncanonical_address(vmcs12->host_gs_base, vcpu)) ||
	    CC(is_noncanonical_address(vmcs12->host_gdtr_base, vcpu)) ||
	    CC(is_noncanonical_address(vmcs12->host_idtr_base, vcpu)) ||
	    CC(is_noncanonical_address(vmcs12->host_tr_base, vcpu)) ||
	    CC(is_noncanonical_address(vmcs12->host_rip, vcpu)))
		return -EINVAL;
#endif

	/*
	 * If the load IA32_EFER VM-exit control is 1, bits reserved in the
	 * IA32_EFER MSR must be 0 in the field for that register. In addition,
	 * the values of the LMA and LME bits in the field must each be that of
	 * the host address-space size VM-exit control.
	 */
	if (vmcs12->vm_exit_controls & VM_EXIT_LOAD_IA32_EFER) {
		if (FUNC0(!FUNC3(vcpu, vmcs12->host_ia32_efer)) ||
		    FUNC0(ia32e != !!(vmcs12->host_ia32_efer & EFER_LMA)) ||
		    FUNC0(ia32e != !!(vmcs12->host_ia32_efer & EFER_LME)))
			return -EINVAL;
	}

	return 0;
}