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
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {int tsr; int tcr; scalar_t__ watchdog_enabled; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  wdt_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_PENDING_TIMER ; 
 int /*<<< orphan*/  KVM_REQ_WATCHDOG ; 
 int TCR_WRC_MASK ; 
 int TSR_ENW ; 
 int TSR_WIS ; 
 TYPE_2__ arch ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (int*,int,int) ; 
 struct kvm_vcpu* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct kvm_vcpu* vcpu ; 

void FUNC6(struct timer_list *t)
{
	struct kvm_vcpu *vcpu = FUNC2(vcpu, t, arch.wdt_timer);
	u32 tsr, new_tsr;
	int final;

	do {
		new_tsr = tsr = vcpu->arch.tsr;
		final = 0;

		/* Time out event */
		if (tsr & TSR_ENW) {
			if (tsr & TSR_WIS)
				final = 1;
			else
				new_tsr = tsr | TSR_WIS;
		} else {
			new_tsr = tsr | TSR_ENW;
		}
	} while (FUNC1(&vcpu->arch.tsr, tsr, new_tsr) != tsr);

	if (new_tsr & TSR_WIS) {
		FUNC5();
		FUNC3(KVM_REQ_PENDING_TIMER, vcpu);
		FUNC4(vcpu);
	}

	/*
	 * If this is final watchdog expiry and some action is required
	 * then exit to userspace.
	 */
	if (final && (vcpu->arch.tcr & TCR_WRC_MASK) &&
	    vcpu->arch.watchdog_enabled) {
		FUNC5();
		FUNC3(KVM_REQ_WATCHDOG, vcpu);
		FUNC4(vcpu);
	}

	/*
	 * Stop running the watchdog timer after final expiration to
	 * prevent the host from being flooded with timers if the
	 * guest sets a short period.
	 * Timers will resume when TSR/TCR is updated next time.
	 */
	if (!final)
		FUNC0(vcpu);
}