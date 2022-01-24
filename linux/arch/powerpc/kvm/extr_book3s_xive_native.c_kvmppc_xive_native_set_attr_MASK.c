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
struct kvmppc_xive {int dummy; } ;
struct kvm_device_attr {int group; int /*<<< orphan*/  addr; int /*<<< orphan*/  attr; } ;
struct kvm_device {struct kvmppc_xive* private; } ;

/* Variables and functions */
 int ENXIO ; 
#define  KVM_DEV_XIVE_EQ_SYNC 134 
#define  KVM_DEV_XIVE_GRP_CTRL 133 
#define  KVM_DEV_XIVE_GRP_EQ_CONFIG 132 
#define  KVM_DEV_XIVE_GRP_SOURCE 131 
#define  KVM_DEV_XIVE_GRP_SOURCE_CONFIG 130 
#define  KVM_DEV_XIVE_GRP_SOURCE_SYNC 129 
#define  KVM_DEV_XIVE_RESET 128 
 int FUNC0 (struct kvmppc_xive*) ; 
 int FUNC1 (struct kvmppc_xive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvmppc_xive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvmppc_xive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kvmppc_xive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kvmppc_xive*) ; 

__attribute__((used)) static int FUNC6(struct kvm_device *dev,
				       struct kvm_device_attr *attr)
{
	struct kvmppc_xive *xive = dev->private;

	switch (attr->group) {
	case KVM_DEV_XIVE_GRP_CTRL:
		switch (attr->attr) {
		case KVM_DEV_XIVE_RESET:
			return FUNC5(xive);
		case KVM_DEV_XIVE_EQ_SYNC:
			return FUNC0(xive);
		}
		break;
	case KVM_DEV_XIVE_GRP_SOURCE:
		return FUNC2(xive, attr->attr,
						     attr->addr);
	case KVM_DEV_XIVE_GRP_SOURCE_CONFIG:
		return FUNC3(xive, attr->attr,
							    attr->addr);
	case KVM_DEV_XIVE_GRP_EQ_CONFIG:
		return FUNC1(xive, attr->attr,
							   attr->addr);
	case KVM_DEV_XIVE_GRP_SOURCE_SYNC:
		return FUNC4(xive, attr->attr,
						      attr->addr);
	}
	return -ENXIO;
}