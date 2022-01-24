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
struct kvm_timer {int /*<<< orphan*/  pending; scalar_t__ timer_advance_ns; int /*<<< orphan*/  tscdeadline; int /*<<< orphan*/  expired_tscdeadline; scalar_t__ hv_timer_in_use; } ;
struct kvm_lapic {struct kvm_timer lapic_timer; struct kvm_vcpu* vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC7(struct kvm_lapic *apic)
{
	struct kvm_vcpu *vcpu = apic->vcpu;
	struct kvm_timer *ktimer = &apic->lapic_timer;

	if (FUNC3(&apic->lapic_timer.pending))
		return;

	if (FUNC1(apic) || ktimer->hv_timer_in_use)
		ktimer->expired_tscdeadline = ktimer->tscdeadline;

	if (FUNC6(apic->vcpu)) {
		if (apic->lapic_timer.timer_advance_ns)
			FUNC0(vcpu);
		FUNC4(apic);
		return;
	}

	FUNC2(&apic->lapic_timer.pending);
	FUNC5(vcpu);
}