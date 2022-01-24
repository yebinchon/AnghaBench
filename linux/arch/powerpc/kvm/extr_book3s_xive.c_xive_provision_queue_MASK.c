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
typedef  size_t u8 ;
struct xive_q {int /*<<< orphan*/  qpage; } ;
struct kvmppc_xive_vcpu {int /*<<< orphan*/  server_num; int /*<<< orphan*/  vp_id; struct xive_q* queues; struct kvmppc_xive* xive; } ;
struct kvmppc_xive {int q_order; int /*<<< orphan*/  q_page_order; } ;
struct TYPE_2__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct xive_q*,size_t,void*,int,int) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, u8 prio)
{
	struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
	struct kvmppc_xive *xive = xc->xive;
	struct xive_q *q =  &xc->queues[prio];
	void *qpage;
	int rc;

	if (FUNC0(q->qpage))
		return 0;

	/* Allocate the queue and retrieve infos on current node for now */
	qpage = (__be32 *)FUNC1(GFP_KERNEL, xive->q_page_order);
	if (!qpage) {
		FUNC3("Failed to allocate queue %d for VCPU %d\n",
		       prio, xc->server_num);
		return -ENOMEM;
	}
	FUNC2(qpage, 0, 1 << xive->q_order);

	/*
	 * Reconfigure the queue. This will set q->qpage only once the
	 * queue is fully configured. This is a requirement for prio 0
	 * as we will stop doing EOIs for every IPI as soon as we observe
	 * qpage being non-NULL, and instead will only EOI when we receive
	 * corresponding queue 0 entries
	 */
	rc = FUNC4(xc->vp_id, q, prio, qpage,
					 xive->q_order, true);
	if (rc)
		FUNC3("Failed to configure queue %d for VCPU %d\n",
		       prio, xc->server_num);
	return rc;
}