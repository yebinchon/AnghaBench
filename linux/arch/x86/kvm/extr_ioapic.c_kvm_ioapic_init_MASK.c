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
struct kvm_ioapic {int /*<<< orphan*/  dev; int /*<<< orphan*/  base_address; struct kvm* kvm; int /*<<< orphan*/  eoi_inject; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOAPIC_MEM_LENGTH ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  ioapic_mmio_ops ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_ioapic*) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_ioapic_eoi_inject_work ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_ioapic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kvm_ioapic* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kvm *kvm)
{
	struct kvm_ioapic *ioapic;
	int ret;

	ioapic = FUNC5(sizeof(struct kvm_ioapic), GFP_KERNEL_ACCOUNT);
	if (!ioapic)
		return -ENOMEM;
	FUNC8(&ioapic->lock);
	FUNC0(&ioapic->eoi_inject, kvm_ioapic_eoi_inject_work);
	kvm->arch.vioapic = ioapic;
	FUNC3(ioapic);
	FUNC4(&ioapic->dev, &ioapic_mmio_ops);
	ioapic->kvm = kvm;
	FUNC6(&kvm->slots_lock);
	ret = FUNC2(kvm, KVM_MMIO_BUS, ioapic->base_address,
				      IOAPIC_MEM_LENGTH, &ioapic->dev);
	FUNC7(&kvm->slots_lock);
	if (ret < 0) {
		kvm->arch.vioapic = NULL;
		FUNC1(ioapic);
	}

	return ret;
}