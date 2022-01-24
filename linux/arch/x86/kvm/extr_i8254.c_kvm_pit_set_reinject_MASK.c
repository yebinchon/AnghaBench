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
struct kvm_kpit_state {int /*<<< orphan*/  reinject; int /*<<< orphan*/  irq_ack_notifier; } ;
struct kvm_pit {int /*<<< orphan*/  mask_notifier; struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pit*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct kvm_pit *pit, bool reinject)
{
	struct kvm_kpit_state *ps = &pit->pit_state;
	struct kvm *kvm = pit->kvm;

	if (FUNC0(&ps->reinject) == reinject)
		return;

	if (reinject) {
		/* The initial state is preserved while ps->reinject == 0. */
		FUNC2(pit);
		FUNC3(kvm, &ps->irq_ack_notifier);
		FUNC4(kvm, 0, &pit->mask_notifier);
	} else {
		FUNC5(kvm, &ps->irq_ack_notifier);
		FUNC6(kvm, 0, &pit->mask_notifier);
	}

	FUNC1(&ps->reinject, reinject);
}