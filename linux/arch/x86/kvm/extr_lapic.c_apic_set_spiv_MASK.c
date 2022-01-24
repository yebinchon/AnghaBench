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
typedef  int u32 ;
struct kvm_lapic {int sw_enabled; TYPE_1__* vcpu; } ;
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_SPIV ; 
 int APIC_SPIV_APIC_ENABLED ; 
 TYPE_2__ apic_sw_disabled ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct kvm_lapic *apic, u32 val)
{
	bool enabled = val & APIC_SPIV_APIC_ENABLED;

	FUNC0(apic, APIC_SPIV, val);

	if (enabled != apic->sw_enabled) {
		apic->sw_enabled = enabled;
		if (enabled)
			FUNC2(&apic_sw_disabled);
		else
			FUNC3(&apic_sw_disabled.key);

		FUNC1(apic->vcpu->kvm);
	}
}