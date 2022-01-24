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
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, int max_irr)
{
	/*
	 * When running L2, updating RVI is only relevant when
	 * vmcs12 virtual-interrupt-delivery enabled.
	 * However, it can be enabled only when L1 also
	 * intercepts external-interrupts and in that case
	 * we should not update vmcs02 RVI but instead intercept
	 * interrupt. Therefore, do nothing when running L2.
	 */
	if (!FUNC0(vcpu))
		FUNC1(max_irr);
}