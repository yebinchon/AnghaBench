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
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct TYPE_3__ {int /*<<< orphan*/  exit_timing_lock; int /*<<< orphan*/  dec_expires; TYPE_2__ dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvmppc_decrementer_wakeup ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct kvm_vcpu *vcpu)
{
	int ret;

	FUNC1(&vcpu->arch.dec_timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
	vcpu->arch.dec_timer.function = kvmppc_decrementer_wakeup;
	vcpu->arch.dec_expires = FUNC0();

#ifdef CONFIG_KVM_EXIT_TIMING
	mutex_init(&vcpu->arch.exit_timing_lock);
#endif
	ret = FUNC2(vcpu);
	return ret;
}