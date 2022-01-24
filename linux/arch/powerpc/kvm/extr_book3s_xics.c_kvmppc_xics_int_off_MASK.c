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
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;
struct ics_irq_state {int /*<<< orphan*/  priority; int /*<<< orphan*/  server; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MASKED ; 
 struct kvmppc_ics* FUNC0 (struct kvmppc_xics*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_xics*,struct kvmppc_ics*,struct ics_irq_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm *kvm, u32 irq)
{
	struct kvmppc_xics *xics = kvm->arch.xics;
	struct kvmppc_ics *ics;
	struct ics_irq_state *state;
	u16 src;

	if (!xics)
		return -ENODEV;

	ics = FUNC0(xics, irq, &src);
	if (!ics)
		return -EINVAL;
	state = &ics->irq_state[src];

	FUNC1(xics, ics, state, state->server, MASKED, state->priority);

	return 0;
}