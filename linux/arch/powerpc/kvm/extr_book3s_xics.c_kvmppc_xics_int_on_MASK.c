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
struct kvmppc_icp {int dummy; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;
struct ics_irq_state {int /*<<< orphan*/  saved_priority; int /*<<< orphan*/  server; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct kvmppc_xics*,struct kvmppc_icp*,int /*<<< orphan*/ ,int) ; 
 struct kvmppc_ics* FUNC1 (struct kvmppc_xics*,int /*<<< orphan*/ ,size_t*) ; 
 struct kvmppc_icp* FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvmppc_xics*,struct kvmppc_ics*,struct ics_irq_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct kvm *kvm, u32 irq)
{
	struct kvmppc_xics *xics = kvm->arch.xics;
	struct kvmppc_icp *icp;
	struct kvmppc_ics *ics;
	struct ics_irq_state *state;
	u16 src;

	if (!xics)
		return -ENODEV;

	ics = FUNC1(xics, irq, &src);
	if (!ics)
		return -EINVAL;
	state = &ics->irq_state[src];

	icp = FUNC2(kvm, state->server);
	if (!icp)
		return -EINVAL;

	if (FUNC3(xics, ics, state, state->server, state->saved_priority,
		       state->saved_priority))
		FUNC0(xics, icp, irq, false);

	return 0;
}