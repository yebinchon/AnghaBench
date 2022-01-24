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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ timer_mode_mask; scalar_t__ timer_mode; scalar_t__ tscdeadline; scalar_t__ period; int /*<<< orphan*/  timer; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LVTT ; 
 scalar_t__ APIC_LVT_TIMER_TSCDEADLINE ; 
 int /*<<< orphan*/  APIC_TMICT ; 
 int FUNC0 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 

__attribute__((used)) static void FUNC5(struct kvm_lapic *apic)
{
	u32 timer_mode = FUNC2(apic, APIC_LVTT) &
			apic->lapic_timer.timer_mode_mask;

	if (apic->lapic_timer.timer_mode != timer_mode) {
		if (FUNC0(apic) != (timer_mode ==
				APIC_LVT_TIMER_TSCDEADLINE)) {
			FUNC1(&apic->lapic_timer.timer);
			FUNC3(apic, APIC_TMICT, 0);
			apic->lapic_timer.period = 0;
			apic->lapic_timer.tscdeadline = 0;
		}
		apic->lapic_timer.timer_mode = timer_mode;
		FUNC4(apic);
	}
}