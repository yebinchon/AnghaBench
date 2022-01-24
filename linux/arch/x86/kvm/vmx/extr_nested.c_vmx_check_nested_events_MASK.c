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
struct TYPE_5__ {scalar_t__ preemption_timer_expired; scalar_t__ nested_run_pending; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct TYPE_4__ {scalar_t__ pending; } ;
struct TYPE_6__ {scalar_t__ nmi_pending; TYPE_1__ exception; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_lapic {int /*<<< orphan*/  pending_events; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EXIT_REASON_EXCEPTION_NMI ; 
 int /*<<< orphan*/  EXIT_REASON_EXTERNAL_INTERRUPT ; 
 int /*<<< orphan*/  EXIT_REASON_INIT_SIGNAL ; 
 int /*<<< orphan*/  EXIT_REASON_PREEMPTION_TIMER ; 
 int INTR_INFO_VALID_MASK ; 
 int INTR_TYPE_NMI_INTR ; 
 int /*<<< orphan*/  KVM_APIC_INIT ; 
 int NMI_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (struct kvm_vcpu*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vcpu_vmx* FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC14(struct kvm_vcpu *vcpu, bool external_intr)
{
	struct vcpu_vmx *vmx = FUNC11(vcpu);
	unsigned long exit_qual;
	bool block_nested_events =
	    vmx->nested.nested_run_pending || FUNC2(vcpu);
	struct kvm_lapic *apic = vcpu->arch.apic;

	if (FUNC3(vcpu) &&
		FUNC10(KVM_APIC_INIT, &apic->pending_events)) {
		if (block_nested_events)
			return -EBUSY;
		FUNC9(vcpu, EXIT_REASON_INIT_SIGNAL, 0, 0);
		return 0;
	}

	if (vcpu->arch.exception.pending &&
		FUNC7(vcpu, &exit_qual)) {
		if (block_nested_events)
			return -EBUSY;
		FUNC8(vcpu, exit_qual);
		return 0;
	}

	if (FUNC4(FUNC0(vcpu)) &&
	    vmx->nested.preemption_timer_expired) {
		if (block_nested_events)
			return -EBUSY;
		FUNC9(vcpu, EXIT_REASON_PREEMPTION_TIMER, 0, 0);
		return 0;
	}

	if (vcpu->arch.nmi_pending && FUNC6(vcpu)) {
		if (block_nested_events)
			return -EBUSY;
		FUNC9(vcpu, EXIT_REASON_EXCEPTION_NMI,
				  NMI_VECTOR | INTR_TYPE_NMI_INTR |
				  INTR_INFO_VALID_MASK, 0);
		/*
		 * The NMI-triggered VM exit counts as injection:
		 * clear this one and block further NMIs.
		 */
		vcpu->arch.nmi_pending = 0;
		FUNC13(vcpu, true);
		return 0;
	}

	if ((FUNC1(vcpu) || external_intr) &&
	    FUNC5(vcpu)) {
		if (block_nested_events)
			return -EBUSY;
		FUNC9(vcpu, EXIT_REASON_EXTERNAL_INTERRUPT, 0, 0);
		return 0;
	}

	FUNC12(vcpu);
	return 0;
}