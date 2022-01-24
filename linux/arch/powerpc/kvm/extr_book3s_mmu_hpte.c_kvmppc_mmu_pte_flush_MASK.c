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
typedef  int ulong ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct kvm_vcpu*,int,int) ; 

void FUNC5(struct kvm_vcpu *vcpu, ulong guest_ea, ulong ea_mask)
{
	FUNC4("", vcpu, guest_ea, ea_mask);
	guest_ea &= ea_mask;

	switch (ea_mask) {
	case ~0xfffUL:
		FUNC3(vcpu, guest_ea);
		break;
	case 0x0ffff000:
		FUNC2(vcpu, guest_ea);
		break;
	case 0:
		/* Doing a complete flush -> start from scratch */
		FUNC1(vcpu);
		break;
	default:
		FUNC0(1);
		break;
	}
}