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
typedef  unsigned long long u64 ;
struct TYPE_2__ {unsigned long virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_timer {unsigned long long tscdeadline; unsigned long long timer_advance_ns; int /*<<< orphan*/  timer; } ;
struct kvm_lapic {struct kvm_timer lapic_timer; struct kvm_vcpu* vcpu; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_HARD ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long long) ; 
 unsigned long long FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct kvm_lapic *apic)
{
	struct kvm_timer *ktimer = &apic->lapic_timer;
	u64 guest_tsc, tscdeadline = ktimer->tscdeadline;
	u64 ns = 0;
	ktime_t expire;
	struct kvm_vcpu *vcpu = apic->vcpu;
	unsigned long this_tsc_khz = vcpu->arch.virtual_tsc_khz;
	unsigned long flags;
	ktime_t now;

	if (FUNC11(!tscdeadline || !this_tsc_khz))
		return;

	FUNC9(flags);

	now = FUNC4();
	guest_tsc = FUNC6(vcpu, FUNC10());

	ns = (tscdeadline - guest_tsc) * 1000000ULL;
	FUNC1(ns, this_tsc_khz);

	if (FUNC7(tscdeadline > guest_tsc) &&
	    FUNC7(ns > apic->lapic_timer.timer_advance_ns)) {
		expire = FUNC3(now, ns);
		expire = FUNC5(expire, ktimer->timer_advance_ns);
		FUNC2(&ktimer->timer, expire, HRTIMER_MODE_ABS_HARD);
	} else
		FUNC0(apic);

	FUNC8(flags);
}