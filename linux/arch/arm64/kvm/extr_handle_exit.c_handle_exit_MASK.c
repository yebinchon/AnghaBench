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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_run {void* exit_reason; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  ARM_EXCEPTION_EL1_SERROR 132 
#define  ARM_EXCEPTION_HYP_GONE 131 
#define  ARM_EXCEPTION_IL 130 
#define  ARM_EXCEPTION_IRQ 129 
#define  ARM_EXCEPTION_TRAP 128 
 scalar_t__ FUNC1 (int) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ESR_ELx_EC_HVC32 ; 
 scalar_t__ ESR_ELx_EC_HVC64 ; 
 scalar_t__ ESR_ELx_EC_SMC32 ; 
 scalar_t__ ESR_ELx_EC_SMC64 ; 
 void* KVM_EXIT_FAIL_ENTRY ; 
 void* KVM_EXIT_INTERNAL_ERROR ; 
 int FUNC3 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC7 (struct kvm_vcpu*) ; 

int FUNC8(struct kvm_vcpu *vcpu, struct kvm_run *run,
		       int exception_index)
{
	if (FUNC1(exception_index)) {
		u8 hsr_ec = FUNC2(FUNC5(vcpu));

		/*
		 * HVC/SMC already have an adjusted PC, which we need
		 * to correct in order to return to after having
		 * injected the SError.
		 */
		if (hsr_ec == ESR_ELx_EC_HVC32 || hsr_ec == ESR_ELx_EC_HVC64 ||
		    hsr_ec == ESR_ELx_EC_SMC32 || hsr_ec == ESR_ELx_EC_SMC64) {
			u32 adj =  FUNC6(vcpu) ? 4 : 2;
			*FUNC7(vcpu) -= adj;
		}

		return 1;
	}

	exception_index = FUNC0(exception_index);

	switch (exception_index) {
	case ARM_EXCEPTION_IRQ:
		return 1;
	case ARM_EXCEPTION_EL1_SERROR:
		return 1;
	case ARM_EXCEPTION_TRAP:
		return FUNC3(vcpu, run);
	case ARM_EXCEPTION_HYP_GONE:
		/*
		 * EL2 has been reset to the hyp-stub. This happens when a guest
		 * is pre-empted by kvm_reboot()'s shutdown call.
		 */
		run->exit_reason = KVM_EXIT_FAIL_ENTRY;
		return 0;
	case ARM_EXCEPTION_IL:
		/*
		 * We attempted an illegal exception return.  Guest state must
		 * have been corrupted somehow.  Give up.
		 */
		run->exit_reason = KVM_EXIT_FAIL_ENTRY;
		return -EINVAL;
	default:
		FUNC4("Unsupported exception type: %d",
			      exception_index);
		run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		return 0;
	}
}