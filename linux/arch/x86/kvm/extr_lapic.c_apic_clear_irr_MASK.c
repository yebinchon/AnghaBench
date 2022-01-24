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
struct TYPE_3__ {int /*<<< orphan*/  apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int irr_pending; scalar_t__ regs; struct kvm_vcpu* vcpu; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hwapic_irr_update ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ APIC_IRR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(int vec, struct kvm_lapic *apic)
{
	struct kvm_vcpu *vcpu;

	vcpu = apic->vcpu;

	if (FUNC4(vcpu->arch.apicv_active)) {
		/* need to update RVI */
		FUNC2(vec, apic->regs + APIC_IRR);
		kvm_x86_ops->hwapic_irr_update(vcpu,
				FUNC0(apic));
	} else {
		apic->irr_pending = false;
		FUNC2(vec, apic->regs + APIC_IRR);
		if (FUNC1(apic) != -1)
			apic->irr_pending = true;
	}
}