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
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct hrtimer {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct hrtimer timer; } ;
struct kvm_pit {TYPE_3__ pit_state; } ;
struct TYPE_4__ {struct kvm_pit* vpit; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 scalar_t__ FUNC0 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	struct kvm_pit *pit = vcpu->kvm->arch.vpit;
	struct hrtimer *timer;

	if (!FUNC2(vcpu) || !pit)
		return;

	timer = &pit->pit_state.timer;
	FUNC3(&pit->pit_state.lock);
	if (FUNC0(timer))
		FUNC1(timer, HRTIMER_MODE_ABS);
	FUNC4(&pit->pit_state.lock);
}