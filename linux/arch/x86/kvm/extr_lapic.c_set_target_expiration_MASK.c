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
typedef  int u64 ;
struct TYPE_2__ {int period; int /*<<< orphan*/  target_expiration; scalar_t__ tscdeadline; } ;
struct kvm_lapic {int divide_count; TYPE_1__ lapic_timer; int /*<<< orphan*/  vcpu; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int APIC_BUS_CYCLE_NS ; 
 int /*<<< orphan*/  APIC_TMICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 

__attribute__((used)) static bool FUNC7(struct kvm_lapic *apic)
{
	ktime_t now;
	u64 tscl = FUNC6();

	now = FUNC1();
	apic->lapic_timer.period = (u64)FUNC2(apic, APIC_TMICT)
		* APIC_BUS_CYCLE_NS * apic->divide_count;

	if (!apic->lapic_timer.period) {
		apic->lapic_timer.tscdeadline = 0;
		return false;
	}

	FUNC4(apic);

	apic->lapic_timer.tscdeadline = FUNC3(apic->vcpu, tscl) +
		FUNC5(apic->vcpu, apic->lapic_timer.period);
	apic->lapic_timer.target_expiration = FUNC0(now, apic->lapic_timer.period);

	return true;
}