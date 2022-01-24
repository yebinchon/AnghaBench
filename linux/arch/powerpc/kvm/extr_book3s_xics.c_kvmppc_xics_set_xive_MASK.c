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
struct ics_irq_state {int /*<<< orphan*/  resend; int /*<<< orphan*/  masked_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_xics*,struct kvmppc_icp*,int /*<<< orphan*/ ,int) ; 
 struct kvmppc_ics* FUNC2 (struct kvmppc_xics*,int /*<<< orphan*/ ,size_t*) ; 
 struct kvmppc_icp* FUNC3 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kvmppc_xics*,struct kvmppc_ics*,struct ics_irq_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct kvm *kvm, u32 irq, u32 server, u32 priority)
{
	struct kvmppc_xics *xics = kvm->arch.xics;
	struct kvmppc_icp *icp;
	struct kvmppc_ics *ics;
	struct ics_irq_state *state;
	u16 src;

	if (!xics)
		return -ENODEV;

	ics = FUNC2(xics, irq, &src);
	if (!ics)
		return -EINVAL;
	state = &ics->irq_state[src];

	icp = FUNC3(kvm, server);
	if (!icp)
		return -EINVAL;

	FUNC0("set_xive %#x server %#x prio %#x MP:%d RS:%d\n",
		 irq, server, priority,
		 state->masked_pending, state->resend);

	if (FUNC4(xics, ics, state, server, priority, priority))
		FUNC1(xics, icp, irq, false);

	return 0;
}