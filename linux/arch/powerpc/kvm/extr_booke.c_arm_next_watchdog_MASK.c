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
struct TYPE_2__ {int tsr; int /*<<< orphan*/  wdt_lock; int /*<<< orphan*/  wdt_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_WATCHDOG ; 
 unsigned long NEXT_TIMER_MAX_DELTA ; 
 int TSR_ENW ; 
 int TSR_WIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	unsigned long nr_jiffies;
	unsigned long flags;

	/*
	 * If TSR_ENW and TSR_WIS are not set then no need to exit to
	 * userspace, so clear the KVM_REQ_WATCHDOG request.
	 */
	if ((vcpu->arch.tsr & (TSR_ENW | TSR_WIS)) != (TSR_ENW | TSR_WIS))
		FUNC1(KVM_REQ_WATCHDOG, vcpu);

	FUNC3(&vcpu->arch.wdt_lock, flags);
	nr_jiffies = FUNC5(vcpu);
	/*
	 * If the number of jiffies of watchdog timer >= NEXT_TIMER_MAX_DELTA
	 * then do not run the watchdog timer as this can break timer APIs.
	 */
	if (nr_jiffies < NEXT_TIMER_MAX_DELTA)
		FUNC2(&vcpu->arch.wdt_timer, jiffies + nr_jiffies);
	else
		FUNC0(&vcpu->arch.wdt_timer);
	FUNC4(&vcpu->arch.wdt_lock, flags);
}