#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct xive_irq_data {int flags; } ;
struct kvmppc_xive_src_block {int /*<<< orphan*/  lock; } ;
struct kvmppc_xive_irq_state {scalar_t__ guest_priority; int old_p; int old_q; int /*<<< orphan*/  number; int /*<<< orphan*/  act_server; int /*<<< orphan*/  in_eoi; } ;
struct kvmppc_xive {int dummy; } ;

/* Variables and functions */
 scalar_t__ MASKED ; 
 int OPAL_XIVE_IRQ_MASK_VIA_FW ; 
 int /*<<< orphan*/  XIVE_ESB_SET_PQ_10 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_xive_irq_state*,int /*<<< orphan*/ *,struct xive_irq_data**) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_xive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xive_irq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC8(struct kvmppc_xive *xive,
			     struct kvmppc_xive_src_block *sb,
			     struct kvmppc_xive_irq_state *state)
{
	struct xive_irq_data *xd;
	u32 hw_num;
	u8 old_prio;
	u64 val;

	/*
	 * Take the lock, set masked, try again if racing
	 * with H_EOI
	 */
	for (;;) {
		FUNC0(&sb->lock);
		old_prio = state->guest_priority;
		state->guest_priority = MASKED;
		FUNC4();
		if (!state->in_eoi)
			break;
		state->guest_priority = old_prio;
		FUNC1(&sb->lock);
	}

	/* No change ? Bail */
	if (old_prio == MASKED)
		return old_prio;

	/* Get the right irq */
	FUNC2(state, &hw_num, &xd);

	/*
	 * If the interrupt is marked as needing masking via
	 * firmware, we do it here. Firmware masking however
	 * is "lossy", it won't return the old p and q bits
	 * and won't set the interrupt to a state where it will
	 * record queued ones. If this is an issue we should do
	 * lazy masking instead.
	 *
	 * For now, we work around this in unmask by forcing
	 * an interrupt whenever we unmask a non-LSI via FW
	 * (if ever).
	 */
	if (xd->flags & OPAL_XIVE_IRQ_MASK_VIA_FW) {
		FUNC5(hw_num,
				FUNC3(xive, state->act_server),
				MASKED, state->number);
		/* set old_p so we can track if an H_EOI was done */
		state->old_p = true;
		state->old_q = false;
	} else {
		/* Set PQ to 10, return old P and old Q and remember them */
		val = FUNC7(xd, XIVE_ESB_SET_PQ_10);
		state->old_p = !!(val & 2);
		state->old_q = !!(val & 1);

		/*
		 * Synchronize hardware to sensure the queues are updated
		 * when masking
		 */
		FUNC6(hw_num);
	}

	return old_prio;
}