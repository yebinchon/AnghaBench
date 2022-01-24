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
 scalar_t__ NUM_TIMER_REGS ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 

unsigned long FUNC4(struct kvm_vcpu *vcpu)
{
	unsigned long res = 0;

	res += FUNC2(vcpu);
	res += FUNC3(vcpu);
	res += FUNC1(vcpu);
	res += FUNC0(vcpu);
	res += NUM_TIMER_REGS;

	return res;
}