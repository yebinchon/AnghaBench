#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct kvm_kpit_state {int flags; scalar_t__ period; int is_periodic; int /*<<< orphan*/  timer; } ;
struct kvm_pit {int /*<<< orphan*/  expired; struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm {int dummy; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int KVM_PIT_FLAGS_HPET_LEGACY ; 
 int /*<<< orphan*/  KVM_PIT_FREQ ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_pit*) ; 
 long long min_timer_period_us ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct kvm_pit *pit, u32 val, int is_period)
{
	struct kvm_kpit_state *ps = &pit->pit_state;
	struct kvm *kvm = pit->kvm;
	s64 interval;

	if (!FUNC2(kvm) ||
	    ps->flags & KVM_PIT_FLAGS_HPET_LEGACY)
		return;

	interval = FUNC7(val, NSEC_PER_SEC, KVM_PIT_FREQ);

	FUNC8("create pit timer, interval is %llu nsec\n", interval);

	/* TODO The new value only affected after the retriggered */
	FUNC0(&ps->timer);
	FUNC3(&pit->expired);
	ps->period = interval;
	ps->is_periodic = is_period;

	FUNC6(pit);

	/*
	 * Do not allow the guest to program periodic timers with small
	 * interval, since the hrtimers are not throttled by the host
	 * scheduler.
	 */
	if (ps->is_periodic) {
		s64 min_period = min_timer_period_us * 1000LL;

		if (ps->period < min_period) {
			FUNC9(
			    "kvm: requested %lld ns "
			    "i8254 timer period limited to %lld ns\n",
			    ps->period, min_period);
			ps->period = min_period;
		}
	}

	FUNC1(&ps->timer, FUNC4(FUNC5(), interval),
		      HRTIMER_MODE_ABS);
}