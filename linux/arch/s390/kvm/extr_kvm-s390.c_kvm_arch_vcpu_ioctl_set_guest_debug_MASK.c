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
struct TYPE_4__ {scalar_t__ last_bp; } ;
struct TYPE_5__ {TYPE_1__ guestdbg; } ;
struct kvm_vcpu {int guest_debug; TYPE_2__ arch; } ;
struct kvm_guest_debug {int control; } ;
struct TYPE_6__ {int /*<<< orphan*/  has_gpere; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSTAT_P ; 
 int EINVAL ; 
 int KVM_GUESTDBG_ENABLE ; 
 int KVM_GUESTDBG_USE_HW_BP ; 
 int VALID_GUESTDBG_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*,struct kvm_guest_debug*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_3__ sclp ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

int FUNC6(struct kvm_vcpu *vcpu,
					struct kvm_guest_debug *dbg)
{
	int rc = 0;

	FUNC4(vcpu);

	vcpu->guest_debug = 0;
	FUNC0(vcpu);

	if (dbg->control & ~VALID_GUESTDBG_FLAGS) {
		rc = -EINVAL;
		goto out;
	}
	if (!sclp.has_gpere) {
		rc = -EINVAL;
		goto out;
	}

	if (dbg->control & KVM_GUESTDBG_ENABLE) {
		vcpu->guest_debug = dbg->control;
		/* enforce guest PER */
		FUNC3(vcpu, CPUSTAT_P);

		if (dbg->control & KVM_GUESTDBG_USE_HW_BP)
			rc = FUNC2(vcpu, dbg);
	} else {
		FUNC1(vcpu, CPUSTAT_P);
		vcpu->arch.guestdbg.last_bp = 0;
	}

	if (rc) {
		vcpu->guest_debug = 0;
		FUNC0(vcpu);
		FUNC1(vcpu, CPUSTAT_P);
	}

out:
	FUNC5(vcpu);
	return rc;
}