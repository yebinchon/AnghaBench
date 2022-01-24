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
struct TYPE_2__ {int msr_hwcr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC2(struct kvm_vcpu *vcpu)
{
	/* McStatusWrEn enabled? */
	if (FUNC1(vcpu))
		return !!(vcpu->arch.msr_hwcr & FUNC0(18));

	return false;
}