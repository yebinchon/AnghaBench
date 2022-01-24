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
struct TYPE_3__ {unsigned long long current_vmptr; int /*<<< orphan*/  hv_evmcs; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm_instruction_error; } ;

/* Variables and functions */
 int X86_EFLAGS_AF ; 
 int X86_EFLAGS_CF ; 
 int X86_EFLAGS_OF ; 
 int X86_EFLAGS_PF ; 
 int X86_EFLAGS_SF ; 
 int X86_EFLAGS_ZF ; 
 TYPE_2__* FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu,
				u32 vm_instruction_error)
{
	struct vcpu_vmx *vmx = FUNC3(vcpu);

	/*
	 * failValid writes the error number to the current VMCS, which
	 * can't be done if there isn't a current VMCS.
	 */
	if (vmx->nested.current_vmptr == -1ull && !vmx->nested.hv_evmcs)
		return FUNC2(vcpu);

	FUNC5(vcpu, (FUNC4(vcpu)
			& ~(X86_EFLAGS_CF | X86_EFLAGS_PF | X86_EFLAGS_AF |
			    X86_EFLAGS_SF | X86_EFLAGS_OF))
			| X86_EFLAGS_ZF);
	FUNC0(vcpu)->vm_instruction_error = vm_instruction_error;
	/*
	 * We don't need to force a shadow sync because
	 * VM_INSTRUCTION_ERROR is not shadowed
	 */
	return FUNC1(vcpu);
}