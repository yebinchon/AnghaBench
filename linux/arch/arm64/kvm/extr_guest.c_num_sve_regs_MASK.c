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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int SVE_NUM_PREGS ; 
 int SVE_NUM_ZREGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu const*) ; 
 unsigned int FUNC3 (struct kvm_vcpu const*) ; 

__attribute__((used)) static unsigned long FUNC4(const struct kvm_vcpu *vcpu)
{
	const unsigned int slices = FUNC3(vcpu);

	if (!FUNC2(vcpu))
		return 0;

	/* Policed by KVM_GET_REG_LIST: */
	FUNC0(!FUNC1(vcpu));

	return slices * (SVE_NUM_PREGS + SVE_NUM_ZREGS + 1 /* FFR */)
		+ 1; /* KVM_REG_ARM64_SVE_VLS */
}