#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int BOOK3S_HFLAG_SPLIT_HACK ; 
 int SPLIT_HACK_MASK ; 
 int SPLIT_HACK_OFFS ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	if (vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK) {
		ulong pc = FUNC1(vcpu);
		ulong lr = FUNC0(vcpu);
		if ((pc & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS)
			FUNC3(vcpu, pc & ~SPLIT_HACK_MASK);
		if ((lr & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS)
			FUNC2(vcpu, lr & ~SPLIT_HACK_MASK);
		vcpu->arch.hflags &= ~BOOK3S_HFLAG_SPLIT_HACK;
	}
}