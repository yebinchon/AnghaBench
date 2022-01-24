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
struct kvm_s390_irq {int dummy; } ;
struct kvm_s390_interrupt_info {int dummy; } ;
struct kvm_device_attr {int attr; int addr; } ;
struct kvm_device {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KVM_S390_FLIC_MAX_BUFFER ; 
 int FUNC0 (int /*<<< orphan*/ ,struct kvm_s390_interrupt_info*) ; 
 int FUNC1 (struct kvm_s390_interrupt_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_s390_interrupt_info*) ; 
 struct kvm_s390_interrupt_info* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kvm_device *dev,
				struct kvm_device_attr *attr)
{
	struct kvm_s390_interrupt_info *inti = NULL;
	int r = 0;
	int len = attr->attr;

	if (len % sizeof(struct kvm_s390_irq) != 0)
		return -EINVAL;
	else if (len > KVM_S390_FLIC_MAX_BUFFER)
		return -EINVAL;

	while (len >= sizeof(struct kvm_s390_irq)) {
		inti = FUNC3(sizeof(*inti), GFP_KERNEL);
		if (!inti)
			return -ENOMEM;

		r = FUNC1(inti, attr->addr);
		if (r) {
			FUNC2(inti);
			return r;
		}
		r = FUNC0(dev->kvm, inti);
		if (r) {
			FUNC2(inti);
			return r;
		}
		len -= sizeof(struct kvm_s390_irq);
		attr->addr += sizeof(struct kvm_s390_irq);
	}

	return r;
}