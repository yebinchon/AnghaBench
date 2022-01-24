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
struct kvm_device_attr {int attr; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
#define  KVM_S390_VM_CPU_PROCESSOR 130 
#define  KVM_S390_VM_CPU_PROCESSOR_FEAT 129 
#define  KVM_S390_VM_CPU_PROCESSOR_SUBFUNC 128 
 int FUNC0 (struct kvm*,struct kvm_device_attr*) ; 
 int FUNC1 (struct kvm*,struct kvm_device_attr*) ; 
 int FUNC2 (struct kvm*,struct kvm_device_attr*) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm, struct kvm_device_attr *attr)
{
	int ret = -ENXIO;

	switch (attr->attr) {
	case KVM_S390_VM_CPU_PROCESSOR:
		ret = FUNC0(kvm, attr);
		break;
	case KVM_S390_VM_CPU_PROCESSOR_FEAT:
		ret = FUNC1(kvm, attr);
		break;
	case KVM_S390_VM_CPU_PROCESSOR_SUBFUNC:
		ret = FUNC2(kvm, attr);
		break;
	}
	return ret;
}