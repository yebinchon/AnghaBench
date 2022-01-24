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
struct kvm_device_attr {int group; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
#define  KVM_S390_VM_CPU_MODEL 131 
#define  KVM_S390_VM_MEM_CTRL 130 
#define  KVM_S390_VM_MIGRATION 129 
#define  KVM_S390_VM_TOD 128 
 int FUNC0 (struct kvm*,struct kvm_device_attr*) ; 
 int FUNC1 (struct kvm*,struct kvm_device_attr*) ; 
 int FUNC2 (struct kvm*,struct kvm_device_attr*) ; 
 int FUNC3 (struct kvm*,struct kvm_device_attr*) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, struct kvm_device_attr *attr)
{
	int ret;

	switch (attr->group) {
	case KVM_S390_VM_MEM_CTRL:
		ret = FUNC1(kvm, attr);
		break;
	case KVM_S390_VM_TOD:
		ret = FUNC2(kvm, attr);
		break;
	case KVM_S390_VM_CPU_MODEL:
		ret = FUNC0(kvm, attr);
		break;
	case KVM_S390_VM_MIGRATION:
		ret = FUNC3(kvm, attr);
		break;
	default:
		ret = -ENXIO;
		break;
	}

	return ret;
}