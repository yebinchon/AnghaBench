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
struct TYPE_2__ {unsigned long intr_msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long MSR_TS_MASK ; 
 unsigned long MSR_TS_S ; 
 unsigned long FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	unsigned long msr = vcpu->arch.intr_msr;
	unsigned long cur_msr = FUNC1(vcpu);

	/* If transactional, change to suspend mode on IRQ delivery */
	if (FUNC0(cur_msr))
		msr |= MSR_TS_S;
	else
		msr |= cur_msr & MSR_TS_MASK;

	FUNC2(vcpu, msr);
}