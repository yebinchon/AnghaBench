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
struct TYPE_2__ {scalar_t__ tscdeadline; int /*<<< orphan*/  target_expiration; int /*<<< orphan*/  period; } ;
struct kvm_lapic {int /*<<< orphan*/  vcpu; TYPE_1__ lapic_timer; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct kvm_lapic *apic)
{
	ktime_t now = FUNC1();
	u64 tscl = FUNC5();
	ktime_t delta;

	/*
	 * Synchronize both deadlines to the same time source or
	 * differences in the periods (caused by differences in the
	 * underlying clocks or numerical approximation errors) will
	 * cause the two to drift apart over time as the errors
	 * accumulate.
	 */
	apic->lapic_timer.target_expiration =
		FUNC0(apic->lapic_timer.target_expiration,
				apic->lapic_timer.period);
	delta = FUNC2(apic->lapic_timer.target_expiration, now);
	apic->lapic_timer.tscdeadline = FUNC3(apic->vcpu, tscl) +
		FUNC4(apic->vcpu, delta);
}