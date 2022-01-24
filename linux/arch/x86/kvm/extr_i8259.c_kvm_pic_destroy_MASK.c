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
struct kvm_pic {int /*<<< orphan*/  dev_eclr; int /*<<< orphan*/  kvm; int /*<<< orphan*/  dev_slave; int /*<<< orphan*/  dev_master; } ;
struct TYPE_2__ {struct kvm_pic* vpic; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_pic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kvm *kvm)
{
	struct kvm_pic *vpic = kvm->arch.vpic;

	if (!vpic)
		return;

	FUNC2(&kvm->slots_lock);
	FUNC1(vpic->kvm, KVM_PIO_BUS, &vpic->dev_master);
	FUNC1(vpic->kvm, KVM_PIO_BUS, &vpic->dev_slave);
	FUNC1(vpic->kvm, KVM_PIO_BUS, &vpic->dev_eclr);
	FUNC3(&kvm->slots_lock);

	kvm->arch.vpic = NULL;
	FUNC0(vpic);
}