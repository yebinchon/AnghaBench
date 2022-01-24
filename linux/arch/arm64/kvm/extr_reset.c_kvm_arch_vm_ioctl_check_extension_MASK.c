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
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_HAS_RAS_EXTN ; 
#define  KVM_CAP_ARM_EL1_32BIT 138 
#define  KVM_CAP_ARM_INJECT_SERROR_ESR 137 
#define  KVM_CAP_ARM_PMU_V3 136 
#define  KVM_CAP_ARM_PTRAUTH_ADDRESS 135 
#define  KVM_CAP_ARM_PTRAUTH_GENERIC 134 
#define  KVM_CAP_ARM_SVE 133 
#define  KVM_CAP_ARM_VM_IPA_SIZE 132 
#define  KVM_CAP_GUEST_DEBUG_HW_BPS 131 
#define  KVM_CAP_GUEST_DEBUG_HW_WPS 130 
#define  KVM_CAP_SET_GUEST_DEBUG 129 
#define  KVM_CAP_VCPU_ATTRIBUTES 128 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int kvm_ipa_limit ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 

int FUNC9(struct kvm *kvm, long ext)
{
	int r;

	switch (ext) {
	case KVM_CAP_ARM_EL1_32BIT:
		r = FUNC0();
		break;
	case KVM_CAP_GUEST_DEBUG_HW_BPS:
		r = FUNC2();
		break;
	case KVM_CAP_GUEST_DEBUG_HW_WPS:
		r = FUNC3();
		break;
	case KVM_CAP_ARM_PMU_V3:
		r = FUNC5();
		break;
	case KVM_CAP_ARM_INJECT_SERROR_ESR:
		r = FUNC1(ARM64_HAS_RAS_EXTN);
		break;
	case KVM_CAP_SET_GUEST_DEBUG:
	case KVM_CAP_VCPU_ATTRIBUTES:
		r = 1;
		break;
	case KVM_CAP_ARM_VM_IPA_SIZE:
		r = kvm_ipa_limit;
		break;
	case KVM_CAP_ARM_SVE:
		r = FUNC8();
		break;
	case KVM_CAP_ARM_PTRAUTH_ADDRESS:
	case KVM_CAP_ARM_PTRAUTH_GENERIC:
		r = FUNC4() && FUNC6() &&
				 FUNC7();
		break;
	default:
		r = 0;
	}

	return r;
}