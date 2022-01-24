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
struct kvm_timer {int /*<<< orphan*/  pending; scalar_t__ hv_timer_in_use; } ;
struct kvm_lapic {TYPE_1__* vcpu; struct kvm_timer lapic_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 scalar_t__ FUNC2 (struct kvm_lapic*) ; 
 scalar_t__ FUNC3 (struct kvm_lapic*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct kvm_lapic *apic)
{
	struct kvm_timer *ktimer = &apic->lapic_timer;

	FUNC0(FUNC6());
	if (apic->lapic_timer.hv_timer_in_use)
		FUNC5(apic);
	if (!FUNC2(apic) && FUNC4(&ktimer->pending))
		return;

	if (FUNC2(apic) || FUNC1(apic))
		FUNC7(apic);
	else if (FUNC3(apic))
		FUNC8(apic);
	FUNC9(apic->vcpu->vcpu_id, false);
}