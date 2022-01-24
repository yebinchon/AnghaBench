#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipb; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu)
{
	switch (vcpu->arch.sie_block->ipb & 0x000000ff) {
	case 0x25:
		return FUNC2(vcpu);
	case 0x2f:
		return FUNC0(vcpu);
	case 0x60:
	case 0x61:
	case 0x62:
		return FUNC1(vcpu);
	default:
		return -EOPNOTSUPP;
	}
}