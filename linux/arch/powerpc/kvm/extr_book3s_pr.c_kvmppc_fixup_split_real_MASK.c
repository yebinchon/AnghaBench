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
 int MSR_DR ; 
 int MSR_IR ; 
 int SPLIT_HACK_MASK ; 
 int SPLIT_HACK_OFFS ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	ulong msr = FUNC0(vcpu);
	ulong pc = FUNC1(vcpu);

	/* We are in DR only split real mode */
	if ((msr & (MSR_IR|MSR_DR)) != MSR_DR)
		return;

	/* We have not fixed up the guest already */
	if (vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK)
		return;

	/* The code is in fixupable address space */
	if (pc & SPLIT_HACK_MASK)
		return;

	vcpu->arch.hflags |= BOOK3S_HFLAG_SPLIT_HACK;
	FUNC2(vcpu, pc | SPLIT_HACK_OFFS);
}