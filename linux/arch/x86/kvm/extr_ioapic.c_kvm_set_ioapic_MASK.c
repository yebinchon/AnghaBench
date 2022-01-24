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
struct kvm_ioapic_state {int /*<<< orphan*/  irr; } ;
struct kvm_ioapic {int /*<<< orphan*/  lock; scalar_t__ irr_delivered; scalar_t__ irr; } ;
struct TYPE_2__ {struct kvm_ioapic* vioapic; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_ioapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_ioapic*,struct kvm_ioapic_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm *kvm, struct kvm_ioapic_state *state)
{
	struct kvm_ioapic *ioapic = kvm->arch.vioapic;

	FUNC3(&ioapic->lock);
	FUNC2(ioapic, state, sizeof(struct kvm_ioapic_state));
	ioapic->irr = 0;
	ioapic->irr_delivered = 0;
	FUNC1(kvm);
	FUNC0(ioapic, state->irr);
	FUNC4(&ioapic->lock);
}