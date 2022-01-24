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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  sve_max_vl; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_ARM64_GUEST_HAS_SVE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kvm_sve_max_vl ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	if (!FUNC2())
		return -EINVAL;

	/* Verify that KVM startup enforced this when SVE was detected: */
	if (FUNC0(!FUNC1()))
		return -EINVAL;

	vcpu->arch.sve_max_vl = kvm_sve_max_vl;

	/*
	 * Userspace can still customize the vector lengths by writing
	 * KVM_REG_ARM64_SVE_VLS.  Allocation is deferred until
	 * kvm_arm_vcpu_finalize(), which freezes the configuration.
	 */
	vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_SVE;

	return 0;
}