#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_7__ {int apic_base; struct kvm_lapic* apic; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
struct kvm_lapic {int base_address; TYPE_3__* vcpu; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* set_virtual_apic_mode ) (struct kvm_vcpu*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  key; } ;
struct TYPE_8__ {int apic_base; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int MSR_IA32_APICBASE_BASE ; 
 int MSR_IA32_APICBASE_BSP ; 
 int MSR_IA32_APICBASE_ENABLE ; 
 int X2APIC_ENABLE ; 
 TYPE_4__ apic_hw_disabled ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 TYPE_5__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 

void FUNC8(struct kvm_vcpu *vcpu, u64 value)
{
	u64 old_value = vcpu->arch.apic_base;
	struct kvm_lapic *apic = vcpu->arch.apic;

	if (!apic)
		value |= MSR_IA32_APICBASE_BSP;

	vcpu->arch.apic_base = value;

	if ((old_value ^ value) & MSR_IA32_APICBASE_ENABLE)
		FUNC2(vcpu);

	if (!apic)
		return;

	/* update jump label if enable bit changes */
	if ((old_value ^ value) & MSR_IA32_APICBASE_ENABLE) {
		if (value & MSR_IA32_APICBASE_ENABLE) {
			FUNC1(apic, vcpu->vcpu_id);
			FUNC5(&apic_hw_disabled);
		} else {
			FUNC6(&apic_hw_disabled.key);
			FUNC4(vcpu->kvm);
		}
	}

	if (((old_value ^ value) & X2APIC_ENABLE) && (value & X2APIC_ENABLE))
		FUNC0(apic, vcpu->vcpu_id);

	if ((old_value ^ value) & (MSR_IA32_APICBASE_ENABLE | X2APIC_ENABLE))
		kvm_x86_ops->set_virtual_apic_mode(vcpu);

	apic->base_address = apic->vcpu->arch.apic_base &
			     MSR_IA32_APICBASE_BASE;

	if ((value & MSR_IA32_APICBASE_ENABLE) &&
	     apic->base_address != APIC_DEFAULT_PHYS_BASE)
		FUNC3("APIC base relocation is unsupported by KVM");
}