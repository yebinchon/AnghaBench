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
struct TYPE_5__ {scalar_t__ apic_arb_prio; scalar_t__ apicv_active; struct kvm_lapic* apic; int /*<<< orphan*/  apic_base; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;
struct kvm_lapic_state {scalar_t__ regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;
struct kvm_lapic {int irr_pending; int isr_count; int highest_isr_cache; scalar_t__ regs; TYPE_1__ lapic_timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* hwapic_isr_update ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* hwapic_irr_update ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* apicv_post_state_restore ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 scalar_t__ APIC_ISR ; 
 int /*<<< orphan*/  APIC_LVT0 ; 
 scalar_t__ APIC_SPIV ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_lapic*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*,struct kvm_lapic_state*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_lapic*) ; 

int FUNC22(struct kvm_vcpu *vcpu, struct kvm_lapic_state *s)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	int r;


	FUNC12(vcpu, vcpu->arch.apic_base);
	/* set SPIV separately to get count of SW disabled APICs right */
	FUNC3(apic, *((u32 *)(s->regs + APIC_SPIV)));

	r = FUNC10(vcpu, s, true);
	if (r)
		return r;
	FUNC15(vcpu->arch.apic->regs, s->regs, sizeof(*s));

	FUNC16(vcpu->kvm);
	FUNC9(vcpu);

	FUNC5(apic);
	FUNC7(&apic->lapic_timer.timer);
	FUNC4(apic);
	FUNC2(apic, FUNC11(apic, APIC_LVT0));
	FUNC21(apic);
	FUNC17(apic);
	apic->irr_pending = true;
	apic->isr_count = vcpu->arch.apicv_active ?
				1 : FUNC6(apic->regs + APIC_ISR);
	apic->highest_isr_cache = -1;
	if (vcpu->arch.apicv_active) {
		kvm_x86_ops->apicv_post_state_restore(vcpu);
		kvm_x86_ops->hwapic_irr_update(vcpu,
				FUNC0(apic));
		kvm_x86_ops->hwapic_isr_update(vcpu,
				FUNC1(apic));
	}
	FUNC13(KVM_REQ_EVENT, vcpu);
	if (FUNC8(vcpu->kvm))
		FUNC14(vcpu);

	vcpu->arch.apic_arb_prio = 0;

	return 0;
}