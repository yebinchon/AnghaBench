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
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {int /*<<< orphan*/  wq; TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ period; int /*<<< orphan*/  hv_timer_in_use; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*) ; 
 scalar_t__ FUNC2 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;

	FUNC5();
	/* If the preempt notifier has already run, it also called apic_timer_expired */
	if (!apic->lapic_timer.hv_timer_in_use)
		goto out;
	FUNC0(FUNC8(&vcpu->wq));
	FUNC4(apic);
	FUNC3(apic);

	if (FUNC2(apic) && apic->lapic_timer.period) {
		FUNC1(apic);
		FUNC7(apic);
	}
out:
	FUNC6();
}