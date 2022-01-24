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
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_ioapic {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct kvm_ioapic* vioapic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvm_ioapic *ioapic = vcpu->kvm->arch.vioapic;

	FUNC1(&ioapic->lock);
	FUNC0(vcpu);
	FUNC2(&ioapic->lock);
}