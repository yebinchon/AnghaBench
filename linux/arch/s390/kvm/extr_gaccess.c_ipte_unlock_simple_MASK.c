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
union ipte_control {scalar_t__ val; scalar_t__ k; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {int /*<<< orphan*/  ipte_mutex; int /*<<< orphan*/  ipte_wq; int /*<<< orphan*/  sca_lock; scalar_t__ ipte_lock_count; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 union ipte_control FUNC0 (union ipte_control) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__,scalar_t__) ; 
 union ipte_control* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu)
{
	union ipte_control old, new, *ic;

	FUNC3(&vcpu->kvm->arch.ipte_mutex);
	vcpu->kvm->arch.ipte_lock_count--;
	if (vcpu->kvm->arch.ipte_lock_count)
		goto out;
	FUNC5(&vcpu->kvm->arch.sca_lock);
	ic = FUNC2(vcpu->kvm);
	do {
		old = FUNC0(*ic);
		new = old;
		new.k = 0;
	} while (FUNC1(&ic->val, old.val, new.val) != old.val);
	FUNC6(&vcpu->kvm->arch.sca_lock);
	FUNC7(&vcpu->kvm->arch.ipte_wq);
out:
	FUNC4(&vcpu->kvm->arch.ipte_mutex);
}