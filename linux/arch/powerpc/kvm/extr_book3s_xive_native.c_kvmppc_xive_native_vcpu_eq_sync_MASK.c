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
struct xive_q {int /*<<< orphan*/  guest_qaddr; int /*<<< orphan*/  qpage; } ;
struct kvmppc_xive_vcpu {struct xive_q* queues; } ;
struct TYPE_3__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_2__* kvm; TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned int KVMPPC_XIVE_Q_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
	unsigned int prio;
	int srcu_idx;

	if (!xc)
		return -ENOENT;

	for (prio = 0; prio < KVMPPC_XIVE_Q_COUNT; prio++) {
		struct xive_q *q = &xc->queues[prio];

		if (!q->qpage)
			continue;

		/* Mark EQ page dirty for migration */
		srcu_idx = FUNC2(&vcpu->kvm->srcu);
		FUNC1(vcpu->kvm, FUNC0(q->guest_qaddr));
		FUNC3(&vcpu->kvm->srcu, srcu_idx);
	}
	return 0;
}