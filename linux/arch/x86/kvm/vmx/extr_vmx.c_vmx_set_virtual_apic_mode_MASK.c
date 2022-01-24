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
struct TYPE_2__ {int change_vmcs01_virtual_apic_mode; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
#define  LAPIC_MODE_DISABLED 131 
#define  LAPIC_MODE_INVALID 130 
#define  LAPIC_MODE_X2APIC 129 
#define  LAPIC_MODE_XAPIC 128 
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ; 
 int SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ flexpriority_enabled ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu_vmx*,int) ; 
 struct vcpu_vmx* FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 

void FUNC10(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC7(vcpu);
	u32 sec_exec_control;

	if (!FUNC4(vcpu))
		return;

	if (!flexpriority_enabled &&
	    !FUNC1())
		return;

	/* Postpone execution until vmcs01 is the current VMCS. */
	if (FUNC2(vcpu)) {
		vmx->nested.change_vmcs01_virtual_apic_mode = true;
		return;
	}

	sec_exec_control = FUNC5(vmx);
	sec_exec_control &= ~(SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES |
			      SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE);

	switch (FUNC3(vcpu)) {
	case LAPIC_MODE_INVALID:
		FUNC0(true, "Invalid local APIC state");
	case LAPIC_MODE_DISABLED:
		break;
	case LAPIC_MODE_XAPIC:
		if (flexpriority_enabled) {
			sec_exec_control |=
				SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES;
			FUNC8(vcpu, true);
		}
		break;
	case LAPIC_MODE_X2APIC:
		if (FUNC1())
			sec_exec_control |=
				SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE;
		break;
	}
	FUNC6(vmx, sec_exec_control);

	FUNC9(vcpu);
}