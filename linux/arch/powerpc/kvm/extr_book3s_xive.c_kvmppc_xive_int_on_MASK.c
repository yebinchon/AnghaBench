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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct kvmppc_xive_src_block {int /*<<< orphan*/  lock; struct kvmppc_xive_irq_state* irq_state; } ;
struct kvmppc_xive_irq_state {scalar_t__ act_priority; scalar_t__ saved_priority; } ;
struct kvmppc_xive {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ MASKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kvmppc_xive_src_block* FUNC1 (struct kvmppc_xive*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_xive*,struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_xive_src_block*,struct kvmppc_xive_irq_state*) ; 

int FUNC5(struct kvm *kvm, u32 irq)
{
	struct kvmppc_xive *xive = kvm->arch.xive;
	struct kvmppc_xive_src_block *sb;
	struct kvmppc_xive_irq_state *state;
	u16 idx;

	if (!xive)
		return -ENODEV;

	sb = FUNC1(xive, irq, &idx);
	if (!sb)
		return -EINVAL;
	state = &sb->irq_state[idx];

	FUNC2("int_on(irq=0x%x)\n", irq);

	/*
	 * Check if interrupt was not targetted
	 */
	if (state->act_priority == MASKED) {
		FUNC2("int_on on untargetted interrupt\n");
		return -EINVAL;
	}

	/* If saved_priority is 0xff, do nothing */
	if (state->saved_priority == MASKED)
		return 0;

	/*
	 * Lock and unmask it.
	 */
	FUNC4(sb, state);
	FUNC3(xive, sb, state, state->saved_priority);
	FUNC0(&sb->lock);

	return 0;
}