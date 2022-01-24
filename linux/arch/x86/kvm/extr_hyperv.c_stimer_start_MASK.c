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
typedef  scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ periodic; } ;
struct kvm_vcpu_hv_stimer {scalar_t__ exp_time; scalar_t__ count; int /*<<< orphan*/  timer; int /*<<< orphan*/  index; TYPE_1__ config; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  vcpu_id; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu_hv_stimer*,int) ; 
 TYPE_2__* FUNC6 (struct kvm_vcpu_hv_stimer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu_hv_stimer *stimer)
{
	u64 time_now;
	ktime_t ktime_now;

	time_now = FUNC1(FUNC6(stimer)->kvm);
	ktime_now = FUNC4();

	if (stimer->config.periodic) {
		if (stimer->exp_time) {
			if (time_now >= stimer->exp_time) {
				u64 remainder;

				FUNC0(time_now - stimer->exp_time,
					      stimer->count, &remainder);
				stimer->exp_time =
					time_now + (stimer->count - remainder);
			}
		} else
			stimer->exp_time = time_now + stimer->count;

		FUNC8(
					FUNC6(stimer)->vcpu_id,
					stimer->index,
					time_now, stimer->exp_time);

		FUNC2(&stimer->timer,
			      FUNC3(ktime_now,
					   100 * (stimer->exp_time - time_now)),
			      HRTIMER_MODE_ABS);
		return 0;
	}
	stimer->exp_time = stimer->count;
	if (time_now >= stimer->count) {
		/*
		 * Expire timer according to Hypervisor Top-Level Functional
		 * specification v4(15.3.1):
		 * "If a one shot is enabled and the specified count is in
		 * the past, it will expire immediately."
		 */
		FUNC5(stimer, false);
		return 0;
	}

	FUNC7(FUNC6(stimer)->vcpu_id,
					   stimer->index,
					   time_now, stimer->count);

	FUNC2(&stimer->timer,
		      FUNC3(ktime_now, 100 * (stimer->count - time_now)),
		      HRTIMER_MODE_ABS);
	return 0;
}