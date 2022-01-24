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
struct kvmppc_vcore {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  cpu_run; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KVMPPC_VCPU_RUNNABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC6(struct kvmppc_vcore *vc,
				 struct kvm_vcpu *vcpu, int wait_state)
{
	FUNC0(wait);

	FUNC2(&vcpu->arch.cpu_run, &wait, wait_state);
	if (vcpu->arch.state == KVMPPC_VCPU_RUNNABLE) {
		FUNC5(&vc->lock);
		FUNC3();
		FUNC4(&vc->lock);
	}
	FUNC1(&vcpu->arch.cpu_run, &wait);
}