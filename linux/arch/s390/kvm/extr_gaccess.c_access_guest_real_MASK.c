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
typedef  enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC0 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__,unsigned long) ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long,void*,unsigned long) ; 
 int FUNC3 (struct kvm_vcpu*,unsigned long,void*,unsigned long) ; 

int FUNC4(struct kvm_vcpu *vcpu, unsigned long gra,
		      void *data, unsigned long len, enum gacc_mode mode)
{
	unsigned long _len, gpa;
	int rc = 0;

	while (len && !rc) {
		gpa = FUNC0(vcpu, gra);
		_len = FUNC1(PAGE_SIZE - (gpa & ~PAGE_MASK), len);
		if (mode)
			rc = FUNC3(vcpu, gpa, data, _len);
		else
			rc = FUNC2(vcpu, gpa, data, _len);
		len -= _len;
		gra += _len;
		data += _len;
	}
	return rc;
}