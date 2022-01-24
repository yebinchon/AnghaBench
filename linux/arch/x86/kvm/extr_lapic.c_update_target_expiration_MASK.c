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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u64 ;
struct TYPE_2__ {int period; int /*<<< orphan*/  target_expiration; int /*<<< orphan*/  tscdeadline; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; int /*<<< orphan*/  vcpu; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int APIC_BUS_CYCLE_NS ; 
 int /*<<< orphan*/  APIC_TMICT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_lapic*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct kvm_lapic *apic, uint32_t old_divisor)
{
	ktime_t now, remaining;
	u64 ns_remaining_old, ns_remaining_new;

	apic->lapic_timer.period = (u64)FUNC4(apic, APIC_TMICT)
		* APIC_BUS_CYCLE_NS * apic->divide_count;
	FUNC5(apic);

	now = FUNC1();
	remaining = FUNC2(apic->lapic_timer.target_expiration, now);
	if (FUNC3(remaining) < 0)
		remaining = 0;

	ns_remaining_old = FUNC3(remaining);
	ns_remaining_new = FUNC6(ns_remaining_old,
	                                   apic->divide_count, old_divisor);

	apic->lapic_timer.tscdeadline +=
		FUNC7(apic->vcpu, ns_remaining_new) -
		FUNC7(apic->vcpu, ns_remaining_old);
	apic->lapic_timer.target_expiration = FUNC0(now, ns_remaining_new);
}