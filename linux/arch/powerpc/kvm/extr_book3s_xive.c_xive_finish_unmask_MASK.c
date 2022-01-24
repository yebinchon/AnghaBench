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
typedef  int /*<<< orphan*/  u32 ;
struct xive_irq_data {int flags; } ;
struct kvmppc_xive_src_block {int dummy; } ;
struct kvmppc_xive_irq_state {scalar_t__ guest_priority; int /*<<< orphan*/  old_p; scalar_t__ old_q; int /*<<< orphan*/  number; int /*<<< orphan*/  act_priority; int /*<<< orphan*/  act_server; } ;
struct kvmppc_xive {int dummy; } ;

/* Variables and functions */
 scalar_t__ MASKED ; 
 int OPAL_XIVE_IRQ_LSI ; 
 int OPAL_XIVE_IRQ_MASK_VIA_FW ; 
 int /*<<< orphan*/  XIVE_ESB_SET_PQ_11 ; 
 int /*<<< orphan*/  FUNC0 (struct kvmppc_xive_irq_state*,int /*<<< orphan*/ *,struct xive_irq_data**) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_xive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct xive_irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xive_irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xive_irq_data*) ; 

__attribute__((used)) static void FUNC7(struct kvmppc_xive *xive,
			       struct kvmppc_xive_src_block *sb,
			       struct kvmppc_xive_irq_state *state,
			       u8 prio)
{
	struct xive_irq_data *xd;
	u32 hw_num;

	/* If we aren't changing a thing, move on */
	if (state->guest_priority != MASKED)
		goto bail;

	/* Get the right irq */
	FUNC0(state, &hw_num, &xd);

	/*
	 * See command in xive_lock_and_mask() concerning masking
	 * via firmware.
	 */
	if (xd->flags & OPAL_XIVE_IRQ_MASK_VIA_FW) {
		FUNC4(hw_num,
				FUNC1(xive, state->act_server),
				state->act_priority, state->number);
		/* If an EOI is needed, do it here */
		if (!state->old_p)
			FUNC6(hw_num, xd);
		/* If this is not an LSI, force a trigger */
		if (!(xd->flags & OPAL_XIVE_IRQ_LSI))
			FUNC3(xd);
		goto bail;
	}

	/* Old Q set, set PQ to 11 */
	if (state->old_q)
		FUNC5(xd, XIVE_ESB_SET_PQ_11);

	/*
	 * If not old P, then perform an "effective" EOI,
	 * on the source. This will handle the cases where
	 * FW EOI is needed.
	 */
	if (!state->old_p)
		FUNC6(hw_num, xd);

	/* Synchronize ordering and mark unmasked */
	FUNC2();
bail:
	state->guest_priority = prio;
}