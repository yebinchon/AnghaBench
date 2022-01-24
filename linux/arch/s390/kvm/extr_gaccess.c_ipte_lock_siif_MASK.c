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
union ipte_control {scalar_t__ val; int k; int /*<<< orphan*/  kh; scalar_t__ kg; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {int /*<<< orphan*/  sca_lock; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 union ipte_control FUNC0 (union ipte_control) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 union ipte_control* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	union ipte_control old, new, *ic;

retry:
	FUNC4(&vcpu->kvm->arch.sca_lock);
	ic = FUNC3(vcpu->kvm);
	do {
		old = FUNC0(*ic);
		if (old.kg) {
			FUNC5(&vcpu->kvm->arch.sca_lock);
			FUNC2();
			goto retry;
		}
		new = old;
		new.k = 1;
		new.kh++;
	} while (FUNC1(&ic->val, old.val, new.val) != old.val);
	FUNC5(&vcpu->kvm->arch.sca_lock);
}