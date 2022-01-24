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
struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int guest_debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  BP_VECTOR ; 
 int KVM_GUESTDBG_ENABLE ; 
 int KVM_GUESTDBG_USE_SW_BP ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC2(vcpu);

	FUNC0(svm, BP_VECTOR);

	if (vcpu->guest_debug & KVM_GUESTDBG_ENABLE) {
		if (vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
			FUNC1(svm, BP_VECTOR);
	} else
		vcpu->guest_debug = 0;
}