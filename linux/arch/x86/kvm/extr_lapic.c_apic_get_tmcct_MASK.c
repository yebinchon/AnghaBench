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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  period; int /*<<< orphan*/  target_expiration; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int APIC_BUS_CYCLE_NS ; 
 int /*<<< orphan*/  APIC_TMICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC7(struct kvm_lapic *apic)
{
	ktime_t remaining, now;
	s64 ns;
	u32 tmcct;

	FUNC0(apic != NULL);

	/* if initial count is 0, current count should also be 0 */
	if (FUNC5(apic, APIC_TMICT) == 0 ||
		apic->lapic_timer.period == 0)
		return 0;

	now = FUNC2();
	remaining = FUNC3(apic->lapic_timer.target_expiration, now);
	if (FUNC4(remaining) < 0)
		remaining = 0;

	ns = FUNC6(FUNC4(remaining), apic->lapic_timer.period);
	tmcct = FUNC1(ns,
			 (APIC_BUS_CYCLE_NS * apic->divide_count));

	return tmcct;
}