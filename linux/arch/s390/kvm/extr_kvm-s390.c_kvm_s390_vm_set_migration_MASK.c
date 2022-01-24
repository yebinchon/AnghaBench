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
struct kvm {int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int ENXIO ; 
#define  KVM_S390_VM_MIGRATION_START 129 
#define  KVM_S390_VM_MIGRATION_STOP 128 
 int FUNC0 (struct kvm*) ; 
 int FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm,
				     struct kvm_device_attr *attr)
{
	int res = -ENXIO;

	FUNC2(&kvm->slots_lock);
	switch (attr->attr) {
	case KVM_S390_VM_MIGRATION_START:
		res = FUNC0(kvm);
		break;
	case KVM_S390_VM_MIGRATION_STOP:
		res = FUNC1(kvm);
		break;
	default:
		break;
	}
	FUNC3(&kvm->slots_lock);

	return res;
}