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
union kvmppc_icp_state {unsigned long cppr; unsigned long pending_pri; scalar_t__ xisr; } ;
typedef  scalar_t__ u32 ;
struct kvmppc_xics {int /*<<< orphan*/  real_mode; } ;
struct TYPE_8__ {unsigned long cppr; } ;
struct kvmppc_icp {int /*<<< orphan*/  n_reject; TYPE_4__ state; int /*<<< orphan*/  vcpu; } ;
struct TYPE_7__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__* kvm; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int H_SUCCESS ; 
 int H_TOO_HARD ; 
 union kvmppc_icp_state FUNC0 (TYPE_4__) ; 
 scalar_t__ XICS_IPI ; 
 int FUNC1 (struct kvmppc_xics*,struct kvmppc_icp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_xics*,struct kvmppc_icp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_xics*,struct kvmppc_icp*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state) ; 

int FUNC6(struct kvm_vcpu *vcpu, unsigned long cppr)
{
	union kvmppc_icp_state old_state, new_state;
	struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
	struct kvmppc_icp *icp = vcpu->arch.icp;
	u32 reject;

	if (!xics || !xics->real_mode)
		return H_TOO_HARD;

	/*
	 * ICP State: Set_CPPR
	 *
	 * We can safely compare the new value with the current
	 * value outside of the transaction as the CPPR is only
	 * ever changed by the processor on itself
	 */
	if (cppr > icp->state.cppr) {
		FUNC4(xics, icp, cppr);
		goto bail;
	} else if (cppr == icp->state.cppr)
		return H_SUCCESS;

	/*
	 * ICP State: Up_CPPR
	 *
	 * The processor is raising its priority, this can result
	 * in a rejection of a pending interrupt:
	 *
	 * ICP State: Reject_Current
	 *
	 * We can remove EE from the current processor, the update
	 * transaction will set it again if needed
	 */
	FUNC2(icp->vcpu);

	do {
		old_state = new_state = FUNC0(icp->state);

		reject = 0;
		new_state.cppr = cppr;

		if (cppr <= new_state.pending_pri) {
			reject = new_state.xisr;
			new_state.xisr = 0;
			new_state.pending_pri = 0xff;
		}

	} while (!FUNC5(icp, old_state, new_state));

	/*
	 * Check for rejects. They are handled by doing a new delivery
	 * attempt (see comments in icp_rm_deliver_irq).
	 */
	if (reject && reject != XICS_IPI) {
		icp->n_reject++;
		FUNC3(xics, icp, reject, false);
	}
 bail:
	return FUNC1(xics, icp);
}