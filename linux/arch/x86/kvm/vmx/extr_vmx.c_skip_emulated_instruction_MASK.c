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
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULTYPE_SKIP ; 
 scalar_t__ EXIT_REASON_EPT_MISCONFIG ; 
 int /*<<< orphan*/  VM_EXIT_INSTRUCTION_LEN ; 
 int /*<<< orphan*/  X86_FEATURE_HYPERVISOR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu)
{
	unsigned long rip;

	/*
	 * Using VMCS.VM_EXIT_INSTRUCTION_LEN on EPT misconfig depends on
	 * undefined behavior: Intel's SDM doesn't mandate the VMCS field be
	 * set when EPT misconfig occurs.  In practice, real hardware updates
	 * VM_EXIT_INSTRUCTION_LEN on EPT misconfig, but other hypervisors
	 * (namely Hyper-V) don't set it due to it being undefined behavior,
	 * i.e. we end up advancing IP with some random value.
	 */
	if (!FUNC3(X86_FEATURE_HYPERVISOR) ||
	    FUNC4(vcpu)->exit_reason != EXIT_REASON_EPT_MISCONFIG) {
		rip = FUNC1(vcpu);
		rip += FUNC5(VM_EXIT_INSTRUCTION_LEN);
		FUNC2(vcpu, rip);
	} else {
		if (!FUNC0(vcpu, EMULTYPE_SKIP))
			return 0;
	}

	/* skipping an emulated instruction also counts */
	FUNC6(vcpu, 0);

	return 1;
}