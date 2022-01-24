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
struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  guest_debug; } ;
struct TYPE_6__ {int as; } ;
struct TYPE_4__ {scalar_t__ iprcc; int /*<<< orphan*/  gpsw; int /*<<< orphan*/  peraddr; int /*<<< orphan*/  perc; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_GUESTDBG_EXIT_PENDING ; 
 scalar_t__ PGM_SPACE_SWITCH ; 
 int PSW_BITS_AS_HOME ; 
 int PSW_BITS_AS_PRIMARY ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 TYPE_3__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct kvm_vcpu *vcpu)
{
	int rc, new_as;

	if (FUNC0(vcpu, vcpu->arch.sie_block->perc,
				vcpu->arch.sie_block->peraddr))
		vcpu->guest_debug |= KVM_GUESTDBG_EXIT_PENDING;

	rc = FUNC1(vcpu);
	if (rc)
		return rc;

	/*
	 * Only RP, SAC, SACF, PT, PTI, PR, PC instructions can trigger
	 * a space-switch event. PER events enforce space-switch events
	 * for these instructions. So if no PER event for the guest is left,
	 * we might have to filter the space-switch element out, too.
	 */
	if (vcpu->arch.sie_block->iprcc == PGM_SPACE_SWITCH) {
		vcpu->arch.sie_block->iprcc = 0;
		new_as = FUNC6(vcpu->arch.sie_block->gpsw).as;

		/*
		 * If the AS changed from / to home, we had RP, SAC or SACF
		 * instruction. Check primary and home space-switch-event
		 * controls. (theoretically home -> home produced no event)
		 */
		if (((new_as == PSW_BITS_AS_HOME) ^ FUNC3(vcpu)) &&
		    (FUNC5(vcpu) || FUNC2(vcpu)))
			vcpu->arch.sie_block->iprcc = PGM_SPACE_SWITCH;

		/*
		 * PT, PTI, PR, PC instruction operate on primary AS only. Check
		 * if the primary-space-switch-event control was or got set.
		 */
		if (new_as == PSW_BITS_AS_PRIMARY && !FUNC3(vcpu) &&
		    (FUNC5(vcpu) || FUNC4(vcpu)))
			vcpu->arch.sie_block->iprcc = PGM_SPACE_SWITCH;
	}
	return 0;
}