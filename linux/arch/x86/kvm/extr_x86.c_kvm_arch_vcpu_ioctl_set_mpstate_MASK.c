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
struct TYPE_4__ {scalar_t__ mp_state; TYPE_1__* apic; scalar_t__ smi_pending; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_mp_state {scalar_t__ mp_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  pending_events; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_APIC_SIPI ; 
 scalar_t__ KVM_MP_STATE_INIT_RECEIVED ; 
 scalar_t__ KVM_MP_STATE_RUNNABLE ; 
 scalar_t__ KVM_MP_STATE_SIPI_RECEIVED ; 
 int /*<<< orphan*/  KVM_REQ_EVENT ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

int FUNC6(struct kvm_vcpu *vcpu,
				    struct kvm_mp_state *mp_state)
{
	int ret = -EINVAL;

	FUNC4(vcpu);

	if (!FUNC2(vcpu) &&
	    mp_state->mp_state != KVM_MP_STATE_RUNNABLE)
		goto out;

	/* INITs are latched while in SMM */
	if ((FUNC0(vcpu) || vcpu->arch.smi_pending) &&
	    (mp_state->mp_state == KVM_MP_STATE_SIPI_RECEIVED ||
	     mp_state->mp_state == KVM_MP_STATE_INIT_RECEIVED))
		goto out;

	if (mp_state->mp_state == KVM_MP_STATE_SIPI_RECEIVED) {
		vcpu->arch.mp_state = KVM_MP_STATE_INIT_RECEIVED;
		FUNC3(KVM_APIC_SIPI, &vcpu->arch.apic->pending_events);
	} else
		vcpu->arch.mp_state = mp_state->mp_state;
	FUNC1(KVM_REQ_EVENT, vcpu);

	ret = 0;
out:
	FUNC5(vcpu);
	return ret;
}