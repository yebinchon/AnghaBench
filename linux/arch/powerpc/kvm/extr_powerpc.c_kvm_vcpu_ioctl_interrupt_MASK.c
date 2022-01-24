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
struct kvm_interrupt {scalar_t__ irq; } ;

/* Variables and functions */
 scalar_t__ KVM_INTERRUPT_UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,struct kvm_interrupt*) ; 

int FUNC3(struct kvm_vcpu *vcpu, struct kvm_interrupt *irq)
{
	if (irq->irq == KVM_INTERRUPT_UNSET) {
		FUNC1(vcpu);
		return 0;
	}

	FUNC2(vcpu, irq);

	FUNC0(vcpu);

	return 0;
}