#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ msr_val; } ;
struct TYPE_7__ {int apic_base; scalar_t__ apic_attention; scalar_t__ apic_arb_prio; scalar_t__ apicv_active; TYPE_2__ pv_eoi; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; int /*<<< orphan*/  kvm; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  pending; int /*<<< orphan*/  timer; } ;
struct kvm_lapic {int isr_count; int highest_isr_cache; TYPE_1__ lapic_timer; scalar_t__ irr_pending; int /*<<< orphan*/  vcpu; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* hwapic_isr_update ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* hwapic_irr_update ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* apicv_post_state_restore ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 scalar_t__ APIC_DFR ; 
 scalar_t__ APIC_ESR ; 
 scalar_t__ APIC_ICR ; 
 scalar_t__ APIC_ICR2 ; 
 scalar_t__ APIC_IRR ; 
 scalar_t__ APIC_ISR ; 
 scalar_t__ APIC_LVT0 ; 
 scalar_t__ APIC_LVTT ; 
 int APIC_LVT_MASKED ; 
 int /*<<< orphan*/  APIC_MODE_EXTINT ; 
 scalar_t__ APIC_TASKPRI ; 
 scalar_t__ APIC_TDCR ; 
 scalar_t__ APIC_TMICT ; 
 scalar_t__ APIC_TMR ; 
 int KVM_APIC_LVT_NUM ; 
 int /*<<< orphan*/  KVM_X86_QUIRK_LINT0_REENABLED ; 
 int MSR_IA32_APICBASE_BSP ; 
 int MSR_IA32_APICBASE_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_lapic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_lapic*,scalar_t__,int) ; 
 scalar_t__ FUNC15 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC16 (struct kvm_vcpu*) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_lapic*) ; 

void FUNC21(struct kvm_vcpu *vcpu, bool init_event)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	int i;

	if (!apic)
		return;

	/* Stop the timer in case it's a reset to an active apic */
	FUNC7(&apic->lapic_timer.timer);

	if (!init_event) {
		FUNC13(vcpu, APIC_DEFAULT_PHYS_BASE |
		                         MSR_IA32_APICBASE_ENABLE);
		FUNC10(apic, vcpu->vcpu_id);
	}
	FUNC9(apic->vcpu);

	for (i = 0; i < KVM_APIC_LVT_NUM; i++)
		FUNC14(apic, APIC_LVTT + 0x10 * i, APIC_LVT_MASKED);
	FUNC3(apic);
	if (FUNC16(vcpu) &&
	    FUNC11(vcpu->kvm, KVM_X86_QUIRK_LINT0_REENABLED))
		FUNC14(apic, APIC_LVT0,
			     FUNC0(0, APIC_MODE_EXTINT));
	FUNC1(apic, FUNC12(apic, APIC_LVT0));

	FUNC14(apic, APIC_DFR, 0xffffffffU);
	FUNC2(apic, 0xff);
	FUNC14(apic, APIC_TASKPRI, 0);
	if (!FUNC5(apic))
		FUNC8(apic, 0);
	FUNC14(apic, APIC_ESR, 0);
	FUNC14(apic, APIC_ICR, 0);
	FUNC14(apic, APIC_ICR2, 0);
	FUNC14(apic, APIC_TDCR, 0);
	FUNC14(apic, APIC_TMICT, 0);
	for (i = 0; i < 8; i++) {
		FUNC14(apic, APIC_IRR + 0x10 * i, 0);
		FUNC14(apic, APIC_ISR + 0x10 * i, 0);
		FUNC14(apic, APIC_TMR + 0x10 * i, 0);
	}
	apic->irr_pending = vcpu->arch.apicv_active;
	apic->isr_count = vcpu->arch.apicv_active ? 1 : 0;
	apic->highest_isr_cache = -1;
	FUNC20(apic);
	FUNC6(&apic->lapic_timer.pending, 0);
	if (FUNC15(vcpu))
		FUNC13(vcpu,
				vcpu->arch.apic_base | MSR_IA32_APICBASE_BSP);
	vcpu->arch.pv_eoi.msr_val = 0;
	FUNC4(apic);
	if (vcpu->arch.apicv_active) {
		kvm_x86_ops->apicv_post_state_restore(vcpu);
		kvm_x86_ops->hwapic_irr_update(vcpu, -1);
		kvm_x86_ops->hwapic_isr_update(vcpu, -1);
	}

	vcpu->arch.apic_arb_prio = 0;
	vcpu->arch.apic_attention = 0;
}