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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ mp_state; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {unsigned long pending_events; int /*<<< orphan*/  sipi_vector; int /*<<< orphan*/  vcpu; } ;
struct TYPE_4__ {scalar_t__ (* apic_init_signal_blocked ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_APIC_INIT ; 
 int /*<<< orphan*/  KVM_APIC_SIPI ; 
 scalar_t__ KVM_MP_STATE_INIT_RECEIVED ; 
 void* KVM_MP_STATE_RUNNABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC10 (unsigned long*,int /*<<< orphan*/ ) ; 

void FUNC11(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	u8 sipi_vector;
	unsigned long pe;

	if (!FUNC6(vcpu) || !apic->pending_events)
		return;

	/*
	 * INITs are latched while CPU is in specific states
	 * (SMM, VMX non-root mode, SVM with GIF=0).
	 * Because a CPU cannot be in these states immediately
	 * after it has processed an INIT signal (and thus in
	 * KVM_MP_STATE_INIT_RECEIVED state), just eat SIPIs
	 * and leave the INIT pending.
	 */
	if (FUNC2(vcpu) || kvm_x86_ops->apic_init_signal_blocked(vcpu)) {
		FUNC0(vcpu->arch.mp_state == KVM_MP_STATE_INIT_RECEIVED);
		if (FUNC9(KVM_APIC_SIPI, &apic->pending_events))
			FUNC1(KVM_APIC_SIPI, &apic->pending_events);
		return;
	}

	pe = FUNC10(&apic->pending_events, 0);
	if (FUNC9(KVM_APIC_INIT, &pe)) {
		FUNC5(vcpu, true);
		if (FUNC4(apic->vcpu))
			vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
		else
			vcpu->arch.mp_state = KVM_MP_STATE_INIT_RECEIVED;
	}
	if (FUNC9(KVM_APIC_SIPI, &pe) &&
	    vcpu->arch.mp_state == KVM_MP_STATE_INIT_RECEIVED) {
		/* evaluate pending_events before reading the vector */
		FUNC7();
		sipi_vector = apic->sipi_vector;
		FUNC3(vcpu, sipi_vector);
		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
	}
}