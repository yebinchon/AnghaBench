#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct kvmppc_xics {int dummy; } ;
struct kvmppc_ics {struct ics_irq_state* irq_state; } ;
struct kvmppc_icp {int rm_eoied_irq; int /*<<< orphan*/  rm_action; } ;
struct TYPE_8__ {int /*<<< orphan*/  pthru_bad_aff; int /*<<< orphan*/  pthru_host; int /*<<< orphan*/  pthru_all; } ;
struct TYPE_6__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {TYPE_4__ stat; TYPE_3__* kvm; TYPE_2__ arch; } ;
struct ics_irq_state {int pq_state; int intr_cpu; scalar_t__ host_irq; scalar_t__ lsi; } ;
struct TYPE_5__ {struct kvmppc_xics* xics; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq_ack_notifier_list; TYPE_1__ arch; } ;

/* Variables and functions */
 int PQ_PRESENTED ; 
 int /*<<< orphan*/  XICS_RM_NOTIFY_EOI ; 
 int FUNC0 (struct kvmppc_xics*,struct kvmppc_icp*) ; 
 int FUNC1 (int*,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_xics*,int /*<<< orphan*/ *,int,int) ; 
 struct kvmppc_ics* FUNC5 (struct kvmppc_xics*,int,size_t*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu, u32 irq)
{
	struct kvmppc_xics *xics = vcpu->kvm->arch.xics;
	struct kvmppc_icp *icp = vcpu->arch.icp;
	struct kvmppc_ics *ics;
	struct ics_irq_state *state;
	u16 src;
	u32 pq_old, pq_new;

	/*
	 * ICS EOI handling: For LSI, if P bit is still set, we need to
	 * resend it.
	 *
	 * For MSI, we move Q bit into P (and clear Q). If it is set,
	 * resend it.
	 */

	ics = FUNC5(xics, irq, &src);
	if (!ics)
		goto bail;

	state = &ics->irq_state[src];

	if (state->lsi)
		pq_new = state->pq_state;
	else
		do {
			pq_old = state->pq_state;
			pq_new = pq_old >> 1;
		} while (FUNC1(&state->pq_state, pq_old, pq_new) != pq_old);

	if (pq_new & PQ_PRESENTED)
		FUNC4(xics, NULL, irq, false);

	if (!FUNC3(&vcpu->kvm->irq_ack_notifier_list)) {
		icp->rm_action |= XICS_RM_NOTIFY_EOI;
		icp->rm_eoied_irq = irq;
	}

	if (state->host_irq) {
		++vcpu->stat.pthru_all;
		if (state->intr_cpu != -1) {
			int pcpu = FUNC6();

			pcpu = FUNC2(pcpu);
			++vcpu->stat.pthru_host;
			if (state->intr_cpu != pcpu) {
				++vcpu->stat.pthru_bad_aff;
				FUNC7(state->host_irq, pcpu);
			}
			state->intr_cpu = -1;
		}
	}

 bail:
	return FUNC0(xics, icp);
}