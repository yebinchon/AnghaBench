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
union kvmppc_icp_state {unsigned long mfrr; unsigned long cppr; unsigned long pending_pri; scalar_t__ xisr; int need_resend; } ;
typedef  scalar_t__ u32 ;
struct kvmppc_xics {int /*<<< orphan*/  real_mode; } ;
struct kvmppc_icp {unsigned long server_num; int /*<<< orphan*/  n_check_resend; int /*<<< orphan*/  n_reject; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
struct TYPE_4__ {struct kvmppc_xics* xics; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int H_PARAMETER ; 
 int H_TOO_HARD ; 
 union kvmppc_icp_state FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XICS_IPI ; 
 int FUNC1 (struct kvmppc_xics*,struct kvmppc_icp*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_xics*,struct kvmppc_icp*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_xics*,struct kvmppc_icp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_icp*,union kvmppc_icp_state,union kvmppc_icp_state) ; 
 struct kvmppc_icp* FUNC5 (TYPE_3__*,unsigned long) ; 

int FUNC6(struct kvm_vcpu *vcpu, unsigned long server,
		  unsigned long mfrr)
{
	union kvmppc_icp_state old_state, new_state;
	struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
	struct kvmppc_icp *icp, *this_icp = vcpu->arch.icp;
	u32 reject;
	bool resend;
	bool local;

	if (!xics || !xics->real_mode)
		return H_TOO_HARD;

	local = this_icp->server_num == server;
	if (local)
		icp = this_icp;
	else
		icp = FUNC5(vcpu->kvm, server);
	if (!icp)
		return H_PARAMETER;

	/*
	 * ICP state: Set_MFRR
	 *
	 * If the CPPR is more favored than the new MFRR, then
	 * nothing needs to be done as there can be no XISR to
	 * reject.
	 *
	 * ICP state: Check_IPI
	 *
	 * If the CPPR is less favored, then we might be replacing
	 * an interrupt, and thus need to possibly reject it.
	 *
	 * ICP State: IPI
	 *
	 * Besides rejecting any pending interrupts, we also
	 * update XISR and pending_pri to mark IPI as pending.
	 *
	 * PAPR does not describe this state, but if the MFRR is being
	 * made less favored than its earlier value, there might be
	 * a previously-rejected interrupt needing to be resent.
	 * Ideally, we would want to resend only if
	 *	prio(pending_interrupt) < mfrr &&
	 *	prio(pending_interrupt) < cppr
	 * where pending interrupt is the one that was rejected. But
	 * we don't have that state, so we simply trigger a resend
	 * whenever the MFRR is made less favored.
	 */
	do {
		old_state = new_state = FUNC0(icp->state);

		/* Set_MFRR */
		new_state.mfrr = mfrr;

		/* Check_IPI */
		reject = 0;
		resend = false;
		if (mfrr < new_state.cppr) {
			/* Reject a pending interrupt if not an IPI */
			if (mfrr <= new_state.pending_pri) {
				reject = new_state.xisr;
				new_state.pending_pri = mfrr;
				new_state.xisr = XICS_IPI;
			}
		}

		if (mfrr > old_state.mfrr) {
			resend = new_state.need_resend;
			new_state.need_resend = 0;
		}
	} while (!FUNC4(icp, old_state, new_state));

	/* Handle reject in real mode */
	if (reject && reject != XICS_IPI) {
		this_icp->n_reject++;
		FUNC3(xics, icp, reject, false);
	}

	/* Handle resends in real mode */
	if (resend) {
		this_icp->n_check_resend++;
		FUNC2(xics, icp);
	}

	return FUNC1(xics, this_icp);
}