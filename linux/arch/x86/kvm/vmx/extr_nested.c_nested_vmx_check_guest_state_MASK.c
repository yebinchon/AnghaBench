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
typedef  int /*<<< orphan*/  u32 ;
struct vmcs12 {int guest_cr0; int vm_entry_controls; int guest_ia32_efer; int guest_bndcfgs; int /*<<< orphan*/  guest_ia32_pat; int /*<<< orphan*/  guest_cr4; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ nested_run_pending; } ;
struct TYPE_4__ {TYPE_1__ nested; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EFER_LMA ; 
 int EFER_LME ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENTRY_FAIL_DEFAULT ; 
 int /*<<< orphan*/  ENTRY_FAIL_VMCS_LINK_PTR ; 
 int MSR_IA32_BNDCFGS_RSVD ; 
 int PAGE_MASK ; 
 int VM_ENTRY_IA32E_MODE ; 
 int VM_ENTRY_LOAD_BNDCFGS ; 
 int VM_ENTRY_LOAD_IA32_EFER ; 
 int VM_ENTRY_LOAD_IA32_PAT ; 
 int X86_CR0_PG ; 
 int FUNC1 (int,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC4 (struct vmcs12*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,struct vmcs12*) ; 
 TYPE_2__* FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu,
					struct vmcs12 *vmcs12,
					u32 *exit_qual)
{
	bool ia32e;

	*exit_qual = ENTRY_FAIL_DEFAULT;

	if (FUNC0(!FUNC5(vcpu, vmcs12->guest_cr0)) ||
	    FUNC0(!FUNC6(vcpu, vmcs12->guest_cr4)))
		return -EINVAL;

	if ((vmcs12->vm_entry_controls & VM_ENTRY_LOAD_IA32_PAT) &&
	    FUNC0(!FUNC2(vmcs12->guest_ia32_pat)))
		return -EINVAL;

	if (FUNC7(vcpu, vmcs12)) {
		*exit_qual = ENTRY_FAIL_VMCS_LINK_PTR;
		return -EINVAL;
	}

	/*
	 * If the load IA32_EFER VM-entry control is 1, the following checks
	 * are performed on the field for the IA32_EFER MSR:
	 * - Bits reserved in the IA32_EFER MSR must be 0.
	 * - Bit 10 (corresponding to IA32_EFER.LMA) must equal the value of
	 *   the IA-32e mode guest VM-exit control. It must also be identical
	 *   to bit 8 (LME) if bit 31 in the CR0 field (corresponding to
	 *   CR0.PG) is 1.
	 */
	if (FUNC8(vcpu)->nested.nested_run_pending &&
	    (vmcs12->vm_entry_controls & VM_ENTRY_LOAD_IA32_EFER)) {
		ia32e = (vmcs12->vm_entry_controls & VM_ENTRY_IA32E_MODE) != 0;
		if (FUNC0(!FUNC3(vcpu, vmcs12->guest_ia32_efer)) ||
		    FUNC0(ia32e != !!(vmcs12->guest_ia32_efer & EFER_LMA)) ||
		    FUNC0(((vmcs12->guest_cr0 & X86_CR0_PG) &&
		     ia32e != !!(vmcs12->guest_ia32_efer & EFER_LME))))
			return -EINVAL;
	}

	if ((vmcs12->vm_entry_controls & VM_ENTRY_LOAD_BNDCFGS) &&
	    (FUNC0(FUNC1(vmcs12->guest_bndcfgs & PAGE_MASK, vcpu)) ||
	     FUNC0((vmcs12->guest_bndcfgs & MSR_IA32_BNDCFGS_RSVD))))
		return -EINVAL;

	if (FUNC4(vmcs12))
		return -EINVAL;

	return 0;
}