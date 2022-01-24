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
 int FUNC0 (struct kvm_vcpu*,int,unsigned short) ; 
 int FUNC1 (struct kvm_vcpu*,int,unsigned short) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, int size, unsigned short port, int in)
{
	int ret;

	if (in)
		ret = FUNC0(vcpu, size, port);
	else
		ret = FUNC1(vcpu, size, port);
	return ret && FUNC2(vcpu);
}