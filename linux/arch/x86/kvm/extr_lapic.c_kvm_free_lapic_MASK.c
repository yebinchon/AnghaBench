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
struct TYPE_4__ {int apic_base; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;
struct kvm_lapic {scalar_t__ regs; int /*<<< orphan*/  sw_enabled; TYPE_1__ lapic_timer; } ;

/* Variables and functions */
 int MSR_IA32_APICBASE_ENABLE ; 
 int /*<<< orphan*/  apic_hw_disabled ; 
 int /*<<< orphan*/  apic_sw_disabled ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;

	if (!vcpu->arch.apic)
		return;

	FUNC1(&apic->lapic_timer.timer);

	if (!(vcpu->arch.apic_base & MSR_IA32_APICBASE_ENABLE))
		FUNC3(&apic_hw_disabled);

	if (!apic->sw_enabled)
		FUNC3(&apic_sw_disabled);

	if (apic->regs)
		FUNC0((unsigned long)apic->regs);

	FUNC2(apic);
}