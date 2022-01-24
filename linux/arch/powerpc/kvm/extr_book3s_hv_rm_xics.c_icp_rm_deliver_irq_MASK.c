#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct kvmppc_xics {int /*<<< orphan*/  err_noicp; int /*<<< orphan*/  kvm; int /*<<< orphan*/  err_noics; } ;
struct kvmppc_ics {int /*<<< orphan*/  lock; int /*<<< orphan*/  icsid; struct ics_irq_state* irq_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  need_resend; } ;
struct kvmppc_icp {scalar_t__ server_num; TYPE_1__ state; int /*<<< orphan*/  resend_map; int /*<<< orphan*/  n_reject; } ;
struct ics_irq_state {scalar_t__ server; int resend; scalar_t__ priority; int masked_pending; } ;

/* Variables and functions */
 scalar_t__ MASKED ; 
 scalar_t__ XICS_IPI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvmppc_icp*,scalar_t__,scalar_t__,scalar_t__*) ; 
 struct kvmppc_ics* FUNC3 (struct kvmppc_xics*,scalar_t__,size_t*) ; 
 struct kvmppc_icp* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct kvmppc_xics *xics, struct kvmppc_icp *icp,
			    u32 new_irq, bool check_resend)
{
	struct ics_irq_state *state;
	struct kvmppc_ics *ics;
	u32 reject;
	u16 src;

	/*
	 * This is used both for initial delivery of an interrupt and
	 * for subsequent rejection.
	 *
	 * Rejection can be racy vs. resends. We have evaluated the
	 * rejection in an atomic ICP transaction which is now complete,
	 * so potentially the ICP can already accept the interrupt again.
	 *
	 * So we need to retry the delivery. Essentially the reject path
	 * boils down to a failed delivery. Always.
	 *
	 * Now the interrupt could also have moved to a different target,
	 * thus we may need to re-do the ICP lookup as well
	 */

 again:
	/* Get the ICS state and lock it */
	ics = FUNC3(xics, new_irq, &src);
	if (!ics) {
		/* Unsafe increment, but this does not need to be accurate */
		xics->err_noics++;
		return;
	}
	state = &ics->irq_state[src];

	/* Get a lock on the ICS */
	FUNC0(&ics->lock);

	/* Get our server */
	if (!icp || state->server != icp->server_num) {
		icp = FUNC4(xics->kvm, state->server);
		if (!icp) {
			/* Unsafe increment again*/
			xics->err_noicp++;
			goto out;
		}
	}

	if (check_resend)
		if (!state->resend)
			goto out;

	/* Clear the resend bit of that interrupt */
	state->resend = 0;

	/*
	 * If masked, bail out
	 *
	 * Note: PAPR doesn't mention anything about masked pending
	 * when doing a resend, only when doing a delivery.
	 *
	 * However that would have the effect of losing a masked
	 * interrupt that was rejected and isn't consistent with
	 * the whole masked_pending business which is about not
	 * losing interrupts that occur while masked.
	 *
	 * I don't differentiate normal deliveries and resends, this
	 * implementation will differ from PAPR and not lose such
	 * interrupts.
	 */
	if (state->priority == MASKED) {
		state->masked_pending = 1;
		goto out;
	}

	/*
	 * Try the delivery, this will set the need_resend flag
	 * in the ICP as part of the atomic transaction if the
	 * delivery is not possible.
	 *
	 * Note that if successful, the new delivery might have itself
	 * rejected an interrupt that was "delivered" before we took the
	 * ics spin lock.
	 *
	 * In this case we do the whole sequence all over again for the
	 * new guy. We cannot assume that the rejected interrupt is less
	 * favored than the new one, and thus doesn't need to be delivered,
	 * because by the time we exit icp_rm_try_to_deliver() the target
	 * processor may well have already consumed & completed it, and thus
	 * the rejected interrupt might actually be already acceptable.
	 */
	if (FUNC2(icp, new_irq, state->priority, &reject)) {
		/*
		 * Delivery was successful, did we reject somebody else ?
		 */
		if (reject && reject != XICS_IPI) {
			FUNC1(&ics->lock);
			icp->n_reject++;
			new_irq = reject;
			check_resend = 0;
			goto again;
		}
	} else {
		/*
		 * We failed to deliver the interrupt we need to set the
		 * resend map bit and mark the ICS state as needing a resend
		 */
		state->resend = 1;

		/*
		 * Make sure when checking resend, we don't miss the resend
		 * if resend_map bit is seen and cleared.
		 */
		FUNC7();
		FUNC5(ics->icsid, icp->resend_map);

		/*
		 * If the need_resend flag got cleared in the ICP some time
		 * between icp_rm_try_to_deliver() atomic update and now, then
		 * we know it might have missed the resend_map bit. So we
		 * retry
		 */
		FUNC6();
		if (!icp->state.need_resend) {
			state->resend = 0;
			FUNC1(&ics->lock);
			check_resend = 0;
			goto again;
		}
	}
 out:
	FUNC1(&ics->lock);
}