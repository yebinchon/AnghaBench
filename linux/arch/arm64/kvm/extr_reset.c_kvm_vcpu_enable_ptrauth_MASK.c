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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  features; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_ARM64_GUEST_HAS_PTRAUTH ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_PTRAUTH_ADDRESS ; 
 int /*<<< orphan*/  KVM_ARM_VCPU_PTRAUTH_GENERIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	/* Support ptrauth only if the system supports these capabilities. */
	if (!FUNC0())
		return -EINVAL;

	if (!FUNC1() ||
	    !FUNC2())
		return -EINVAL;
	/*
	 * For now make sure that both address/generic pointer authentication
	 * features are requested by the userspace together.
	 */
	if (!FUNC3(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
	    !FUNC3(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features))
		return -EINVAL;

	vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_PTRAUTH;
	return 0;
}