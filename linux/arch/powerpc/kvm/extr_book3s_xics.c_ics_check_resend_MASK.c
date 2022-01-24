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
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct ics_irq_state {int /*<<< orphan*/  number; int /*<<< orphan*/  priority; scalar_t__ resend; } ;

/* Variables and functions */
 int KVMPPC_XICS_IRQ_PER_ICS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvmppc_xics*,struct kvmppc_icp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct kvmppc_xics *xics, struct kvmppc_ics *ics,
			     struct kvmppc_icp *icp)
{
	int i;

	for (i = 0; i < KVMPPC_XICS_IRQ_PER_ICS; i++) {
		struct ics_irq_state *state = &ics->irq_state[i];
		if (state->resend) {
			FUNC0("resend %#x prio %#x\n", state->number,
				      state->priority);
			FUNC1(xics, icp, state->number, true);
		}
	}
}