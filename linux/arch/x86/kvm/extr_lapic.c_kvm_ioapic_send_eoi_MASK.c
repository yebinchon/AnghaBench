#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvm_lapic {TYPE_2__* vcpu; scalar_t__ regs; } ;
struct TYPE_4__ {int pending_ioapic_eoi; } ;
struct TYPE_5__ {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 scalar_t__ APIC_TMR ; 
 int IOAPIC_EDGE_TRIG ; 
 int IOAPIC_LEVEL_TRIG ; 
 int /*<<< orphan*/  KVM_REQ_IOAPIC_EOI_EXIT ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct kvm_lapic *apic, int vector)
{
	int trigger_mode;

	/* Eoi the ioapic only if the ioapic doesn't own the vector. */
	if (!FUNC2(apic, vector))
		return;

	/* Request a KVM exit to inform the userspace IOAPIC. */
	if (FUNC1(apic->vcpu->kvm)) {
		apic->vcpu->arch.pending_ioapic_eoi = vector;
		FUNC4(KVM_REQ_IOAPIC_EOI_EXIT, apic->vcpu);
		return;
	}

	if (FUNC0(vector, apic->regs + APIC_TMR))
		trigger_mode = IOAPIC_LEVEL_TRIG;
	else
		trigger_mode = IOAPIC_EDGE_TRIG;

	FUNC3(apic->vcpu, vector, trigger_mode);
}