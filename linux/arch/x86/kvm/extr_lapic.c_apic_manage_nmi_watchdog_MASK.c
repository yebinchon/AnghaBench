#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct kvm_lapic {int lvt0_in_nmi_mode; TYPE_3__* vcpu; } ;
struct TYPE_6__ {TYPE_2__* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/  vapics_in_nmi_mode; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kvm_lapic *apic, u32 lvt0_val)
{
	bool lvt0_in_nmi_mode = FUNC0(lvt0_val);

	if (apic->lvt0_in_nmi_mode != lvt0_in_nmi_mode) {
		apic->lvt0_in_nmi_mode = lvt0_in_nmi_mode;
		if (lvt0_in_nmi_mode) {
			FUNC2(&apic->vcpu->kvm->arch.vapics_in_nmi_mode);
		} else
			FUNC1(&apic->vcpu->kvm->arch.vapics_in_nmi_mode);
	}
}