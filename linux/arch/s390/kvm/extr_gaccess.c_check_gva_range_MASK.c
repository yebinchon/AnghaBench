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
typedef  int /*<<< orphan*/  u8 ;
struct kvm_vcpu {int dummy; } ;
typedef  enum gacc_mode { ____Placeholder_gacc_mode } gacc_mode ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int FUNC0 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(struct kvm_vcpu *vcpu, unsigned long gva, u8 ar,
		    unsigned long length, enum gacc_mode mode)
{
	unsigned long gpa;
	unsigned long currlen;
	int rc = 0;

	FUNC1(vcpu);
	while (length > 0 && !rc) {
		currlen = FUNC3(length, PAGE_SIZE - (gva % PAGE_SIZE));
		rc = FUNC0(vcpu, gva, ar, &gpa, mode);
		gva += currlen;
		length -= currlen;
	}
	FUNC2(vcpu);

	return rc;
}