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
struct TYPE_4__ {TYPE_1__* debug_ptr; } ;
struct kvm_vcpu {int guest_debug; TYPE_2__ arch; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dbg_wvr; int /*<<< orphan*/ * dbg_wcr; int /*<<< orphan*/ * dbg_bvr; int /*<<< orphan*/ * dbg_bcr; } ;

/* Variables and functions */
 int KVM_GUESTDBG_USE_HW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	FUNC4(vcpu->guest_debug);

	if (vcpu->guest_debug) {
		FUNC3(vcpu);

		/*
		 * If we were using HW debug we need to restore the
		 * debug_ptr to the guest debug state.
		 */
		if (vcpu->guest_debug & KVM_GUESTDBG_USE_HW) {
			FUNC2(vcpu);

			FUNC5("BKPTS", FUNC0(),
						&vcpu->arch.debug_ptr->dbg_bcr[0],
						&vcpu->arch.debug_ptr->dbg_bvr[0]);

			FUNC5("WAPTS", FUNC1(),
						&vcpu->arch.debug_ptr->dbg_wcr[0],
						&vcpu->arch.debug_ptr->dbg_wvr[0]);
		}
	}
}