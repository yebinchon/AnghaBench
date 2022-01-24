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
struct TYPE_2__ {int /*<<< orphan*/  target_expiration; int /*<<< orphan*/  timer; int /*<<< orphan*/  period; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct kvm_lapic *apic)
{
	if (!apic->lapic_timer.period)
		return;

	if (FUNC4(FUNC5(),
			apic->lapic_timer.target_expiration)) {
		FUNC2(apic);

		if (FUNC1(apic))
			return;

		FUNC0(apic);
	}

	FUNC3(&apic->lapic_timer.timer,
		apic->lapic_timer.target_expiration,
		HRTIMER_MODE_ABS);
}