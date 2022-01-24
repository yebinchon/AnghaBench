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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct kvmppc_xive_src_block {int /*<<< orphan*/  lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {int old_p; int old_q; unsigned int pt_number; int /*<<< orphan*/  guest_priority; int /*<<< orphan*/  pt_data; int /*<<< orphan*/  number; int /*<<< orphan*/  act_priority; int /*<<< orphan*/  act_server; int /*<<< orphan*/  ipi_data; } ;
struct kvmppc_xive {TYPE_2__* ops; } ;
struct TYPE_3__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* reset_mapped ) (struct kvm*,unsigned long) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MASKED ; 
 int /*<<< orphan*/  XIVE_ESB_SET_PQ_01 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (struct irq_desc*) ; 
 struct irq_data* FUNC3 (struct irq_desc*) ; 
 int FUNC4 (unsigned int,struct kvmppc_xive_irq_state*) ; 
 scalar_t__ FUNC5 (struct irq_data*) ; 
 struct kvmppc_xive_src_block* FUNC6 (struct kvmppc_xive*,unsigned long,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvmppc_xive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct kvmppc_xive*,struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC16(struct kvm *kvm, unsigned long guest_irq,
			   struct irq_desc *host_desc)
{
	struct kvmppc_xive *xive = kvm->arch.xive;
	struct kvmppc_xive_src_block *sb;
	struct kvmppc_xive_irq_state *state;
	struct irq_data *host_data = FUNC3(host_desc);
	unsigned int host_irq = FUNC2(host_desc);
	unsigned int hw_irq = (unsigned int)FUNC5(host_data);
	u16 idx;
	u8 prio;
	int rc;

	if (!xive)
		return -ENODEV;

	FUNC9("set_mapped girq 0x%lx host HW irq 0x%x...\n",guest_irq, hw_irq);

	sb = FUNC6(xive, guest_irq, &idx);
	if (!sb)
		return -EINVAL;
	state = &sb->irq_state[idx];

	/*
	 * Mark the passed-through interrupt as going to a VCPU,
	 * this will prevent further EOIs and similar operations
	 * from the XIVE code. It will also mask the interrupt
	 * to either PQ=10 or 11 state, the latter if the interrupt
	 * is pending. This will allow us to unmask or retrigger it
	 * after routing it to the guest with a simple EOI.
	 *
	 * The "state" argument is a "token", all it needs is to be
	 * non-NULL to switch to passed-through or NULL for the
	 * other way around. We may not yet have an actual VCPU
	 * target here and we don't really care.
	 */
	rc = FUNC4(host_irq, state);
	if (rc) {
		FUNC10("Failed to set VCPU affinity for irq %d\n", host_irq);
		return rc;
	}

	/*
	 * Mask and read state of IPI. We need to know if its P bit
	 * is set as that means it's potentially already using a
	 * queue entry in the target
	 */
	prio = FUNC12(xive, sb, state);
	FUNC9(" old IPI prio %02x P:%d Q:%d\n", prio,
		 state->old_p, state->old_q);

	/* Turn the IPI hard off */
	FUNC14(&state->ipi_data, XIVE_ESB_SET_PQ_01);

	/*
	 * Reset ESB guest mapping. Needed when ESB pages are exposed
	 * to the guest in XIVE native mode
	 */
	if (xive->ops && xive->ops->reset_mapped)
		xive->ops->reset_mapped(kvm, guest_irq);

	/* Grab info about irq */
	state->pt_number = hw_irq;
	state->pt_data = FUNC1(host_data);

	/*
	 * Configure the IRQ to match the existing configuration of
	 * the IPI if it was already targetted. Otherwise this will
	 * mask the interrupt in a lossy way (act_priority is 0xff)
	 * which is fine for a never started interrupt.
	 */
	FUNC13(hw_irq,
				  FUNC7(xive, state->act_server),
				  state->act_priority, state->number);

	/*
	 * We do an EOI to enable the interrupt (and retrigger if needed)
	 * if the guest has the interrupt unmasked and the P bit was *not*
	 * set in the IPI. If it was set, we know a slot may still be in
	 * use in the target queue thus we have to wait for a guest
	 * originated EOI
	 */
	if (prio != MASKED && !state->old_p)
		FUNC15(hw_irq, state->pt_data);

	/* Clear old_p/old_q as they are no longer relevant */
	state->old_p = state->old_q = false;

	/* Restore guest prio (unlocks EOI) */
	FUNC8();
	state->guest_priority = prio;
	FUNC0(&sb->lock);

	return 0;
}