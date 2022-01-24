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
struct openpic {int gcr; int mpic_mode_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dst; } ;
struct TYPE_2__ {int irq_cpu_id; struct openpic* mpic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int GCR_MODE_PROXY ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct openpic*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct openpic *opp = vcpu->arch.mpic;
	int cpu = vcpu->arch.irq_cpu_id;
	unsigned long flags;

	FUNC2(&opp->lock, flags);

	if ((opp->gcr & opp->mpic_mode_mask) == GCR_MODE_PROXY)
		FUNC0(vcpu, FUNC1(opp, &opp->dst[cpu], cpu));

	FUNC3(&opp->lock, flags);
}