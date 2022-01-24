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
typedef  int u32 ;
typedef  size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_passthru_irqmap {int dummy; } ;
struct kvmppc_irq_map {int v_hwirq; int /*<<< orphan*/  r_hwirq; int /*<<< orphan*/  desc; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int dummy; } ;
struct TYPE_6__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__* kvm; } ;
struct ics_irq_state {int pq_state; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {struct kvmppc_xics* xics; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ H_TOO_HARD ; 
 int PQ_PRESENTED ; 
 scalar_t__ FUNC0 (struct kvmppc_xics*,struct kvmppc_icp*) ; 
 int FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvmppc_xics*,struct kvmppc_icp*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct kvmppc_ics* FUNC6 (struct kvmppc_xics*,int,size_t*) ; 

long FUNC7(struct kvm_vcpu *vcpu,
				 __be32 xirr,
				 struct kvmppc_irq_map *irq_map,
				 struct kvmppc_passthru_irqmap *pimap,
				 bool *again)
{
	struct kvmppc_xics *xics;
	struct kvmppc_icp *icp;
	struct kvmppc_ics *ics;
	struct ics_irq_state *state;
	u32 irq;
	u16 src;
	u32 pq_old, pq_new;

	irq = irq_map->v_hwirq;
	xics = vcpu->kvm->arch.xics;
	icp = vcpu->arch.icp;

	FUNC5(irq_map->desc);

	ics = FUNC6(xics, irq, &src);
	if (!ics)
		return 2;

	state = &ics->irq_state[src];

	/* only MSIs register bypass producers, so it must be MSI here */
	do {
		pq_old = state->pq_state;
		pq_new = ((pq_old << 1) & 3) | PQ_PRESENTED;
	} while (FUNC1(&state->pq_state, pq_old, pq_new) != pq_old);

	/* Test P=1, Q=0, this is the only case where we present */
	if (pq_new == PQ_PRESENTED)
		FUNC3(xics, icp, irq, false);

	/* EOI the interrupt */
	FUNC2(FUNC4(irq_map->desc), irq_map->r_hwirq, xirr,
		again);

	if (FUNC0(xics, icp) == H_TOO_HARD)
		return 2;
	else
		return -2;
}