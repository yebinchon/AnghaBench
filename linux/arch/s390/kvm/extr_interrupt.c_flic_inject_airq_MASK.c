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
struct s390_io_adapter {int dummy; } ;
struct kvm_device_attr {unsigned int attr; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct s390_io_adapter* FUNC0 (struct kvm*,unsigned int) ; 
 int FUNC1 (struct kvm*,struct s390_io_adapter*) ; 

__attribute__((used)) static int FUNC2(struct kvm *kvm, struct kvm_device_attr *attr)
{
	unsigned int id = attr->attr;
	struct s390_io_adapter *adapter = FUNC0(kvm, id);

	if (!adapter)
		return -EINVAL;

	return FUNC1(kvm, adapter);
}