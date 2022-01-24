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
 int EINVAL ; 
 int EPERM ; 
#define  KVM_ARM_VCPU_SVE 128 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, int feature)
{
	switch (feature) {
	case KVM_ARM_VCPU_SVE:
		if (!FUNC2(vcpu))
			return -EINVAL;

		if (FUNC0(vcpu))
			return -EPERM;

		return FUNC1(vcpu);
	}

	return -EINVAL;
}