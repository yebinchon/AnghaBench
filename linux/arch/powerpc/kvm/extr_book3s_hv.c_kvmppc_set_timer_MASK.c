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
struct TYPE_2__ {unsigned long dec_expires; int timer_running; int /*<<< orphan*/  dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 unsigned long FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu)
{
	unsigned long dec_nsec, now;

	now = FUNC0();
	if (now > vcpu->arch.dec_expires) {
		/* decrementer has already gone negative */
		FUNC3(vcpu);
		FUNC2(vcpu);
		return;
	}
	dec_nsec = FUNC4(vcpu->arch.dec_expires - now);
	FUNC1(&vcpu->arch.dec_timer, dec_nsec, HRTIMER_MODE_REL);
	vcpu->arch.timer_running = 1;
}