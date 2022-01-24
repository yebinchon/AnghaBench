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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ apicv_active; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {void* regs; } ;

/* Variables and functions */
 int APIC_IRR ; 
 int APIC_ISR ; 
 int /*<<< orphan*/  APIC_LVTT ; 
 int APIC_VECTOR_MASK ; 
 scalar_t__ FUNC0 (int,void*) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 int FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	u32 reg = FUNC2(apic, APIC_LVTT);

	if (FUNC1(apic)) {
		int vec = reg & APIC_VECTOR_MASK;
		void *bitmap = apic->regs + APIC_ISR;

		if (vcpu->arch.apicv_active)
			bitmap = apic->regs + APIC_IRR;

		if (FUNC0(vec, bitmap))
			return true;
	}
	return false;
}