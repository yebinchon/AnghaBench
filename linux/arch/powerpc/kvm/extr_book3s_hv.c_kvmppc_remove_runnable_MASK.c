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
typedef  int /*<<< orphan*/  u64 ;
struct kvmppc_vcore {int /*<<< orphan*/ * runnable_threads; int /*<<< orphan*/  n_runnable; } ;
struct TYPE_2__ {scalar_t__ state; size_t ptid; int /*<<< orphan*/  tbacct_lock; int /*<<< orphan*/  busy_preempt; scalar_t__ stolen_logged; int /*<<< orphan*/  busy_stolen; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 scalar_t__ KVMPPC_VCPU_BUSY_IN_HOST ; 
 scalar_t__ KVMPPC_VCPU_RUNNABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct kvmppc_vcore*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kvmppc_vcore *vc,
				   struct kvm_vcpu *vcpu)
{
	u64 now;

	if (vcpu->arch.state != KVMPPC_VCPU_RUNNABLE)
		return;
	FUNC2(&vcpu->arch.tbacct_lock);
	now = FUNC1();
	vcpu->arch.busy_stolen += FUNC4(vc, now) -
		vcpu->arch.stolen_logged;
	vcpu->arch.busy_preempt = now;
	vcpu->arch.state = KVMPPC_VCPU_BUSY_IN_HOST;
	FUNC3(&vcpu->arch.tbacct_lock);
	--vc->n_runnable;
	FUNC0(vc->runnable_threads[vcpu->arch.ptid], NULL);
}