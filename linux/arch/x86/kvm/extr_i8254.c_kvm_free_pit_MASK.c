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
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;
struct kvm_pit {int /*<<< orphan*/  irq_source_id; int /*<<< orphan*/  worker; TYPE_1__ pit_state; int /*<<< orphan*/  speaker_dev; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct kvm_pit* vpit; } ;
struct kvm {int /*<<< orphan*/  slots_lock; TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_pit*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct kvm *kvm)
{
	struct kvm_pit *pit = kvm->arch.vpit;

	if (pit) {
		FUNC6(&kvm->slots_lock);
		FUNC4(kvm, KVM_PIO_BUS, &pit->dev);
		FUNC4(kvm, KVM_PIO_BUS, &pit->speaker_dev);
		FUNC7(&kvm->slots_lock);
		FUNC5(pit, false);
		FUNC0(&pit->pit_state.timer);
		FUNC2(pit->worker);
		FUNC3(kvm, pit->irq_source_id);
		FUNC1(pit);
	}
}