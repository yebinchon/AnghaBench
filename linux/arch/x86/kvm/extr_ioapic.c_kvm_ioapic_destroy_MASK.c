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
struct kvm_ioapic {int /*<<< orphan*/  dev; int /*<<< orphan*/  eoi_inject; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_ioapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm *kvm)
{
	struct kvm_ioapic *ioapic = kvm->arch.vioapic;

	if (!ioapic)
		return;

	FUNC0(&ioapic->eoi_inject);
	FUNC3(&kvm->slots_lock);
	FUNC2(kvm, KVM_MMIO_BUS, &ioapic->dev);
	FUNC4(&kvm->slots_lock);
	kvm->arch.vioapic = NULL;
	FUNC1(ioapic);
}