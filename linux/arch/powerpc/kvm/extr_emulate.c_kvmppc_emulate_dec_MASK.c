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
struct TYPE_2__ {unsigned long long dec; int /*<<< orphan*/  dec_jiffies; int /*<<< orphan*/  dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 unsigned long FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long) ; 
 unsigned long long FUNC7 (unsigned long long) ; 

void FUNC8(struct kvm_vcpu *vcpu)
{
	unsigned long dec_nsec;
	unsigned long long dec_time;

	FUNC6("mtDEC: %lx\n", vcpu->arch.dec);
	FUNC3(&vcpu->arch.dec_timer);

#ifdef CONFIG_PPC_BOOK3S
	/* mtdec lowers the interrupt line when positive. */
	kvmppc_core_dequeue_dec(vcpu);
#endif

#ifdef CONFIG_BOOKE
	/* On BOOKE, DEC = 0 is as good as decrementer not enabled */
	if (vcpu->arch.dec == 0)
		return;
#endif

	/*
	 * The decrementer ticks at the same rate as the timebase, so
	 * that's how we convert the guest DEC value to the number of
	 * host ticks.
	 */

	dec_time = vcpu->arch.dec;
	/*
	 * Guest timebase ticks at the same frequency as host timebase.
	 * So use the host timebase calculations for decrementer emulation.
	 */
	dec_time = FUNC7(dec_time);
	dec_nsec = FUNC0(dec_time, NSEC_PER_SEC);
	FUNC2(&vcpu->arch.dec_timer,
		FUNC4(dec_time, dec_nsec), HRTIMER_MODE_REL);
	vcpu->arch.dec_jiffies = FUNC1();
}