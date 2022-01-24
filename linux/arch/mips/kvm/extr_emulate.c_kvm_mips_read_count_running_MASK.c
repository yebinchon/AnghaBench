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
typedef  scalar_t__ u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_3__ {int count_period; int /*<<< orphan*/  comparecount_timer; scalar_t__ count_bias; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* queue_timer_int ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* kvm_mips_callbacks ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 

__attribute__((used)) static u32 FUNC8(struct kvm_vcpu *vcpu, ktime_t now)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	ktime_t expires, threshold;
	u32 count, compare;
	int running;

	/* Calculate the biased and scaled guest CP0_Count */
	count = vcpu->arch.count_bias + FUNC5(vcpu, now);
	compare = FUNC6(cop0);

	/*
	 * Find whether CP0_Count has reached the closest timer interrupt. If
	 * not, we shouldn't inject it.
	 */
	if ((s32)(count - compare) < 0)
		return count;

	/*
	 * The CP0_Count we're going to return has already reached the closest
	 * timer interrupt. Quickly check if it really is a new interrupt by
	 * looking at whether the interval until the hrtimer expiry time is
	 * less than 1/4 of the timer period.
	 */
	expires = FUNC1(&vcpu->arch.comparecount_timer);
	threshold = FUNC3(now, vcpu->arch.count_period / 4);
	if (FUNC4(expires, threshold)) {
		/*
		 * Cancel it while we handle it so there's no chance of
		 * interference with the timeout handler.
		 */
		running = FUNC0(&vcpu->arch.comparecount_timer);

		/* Nothing should be waiting on the timeout */
		kvm_mips_callbacks->queue_timer_int(vcpu);

		/*
		 * Restart the timer if it was running based on the expiry time
		 * we read, so that we don't push it back 2 periods.
		 */
		if (running) {
			expires = FUNC3(expires,
					       vcpu->arch.count_period);
			FUNC2(&vcpu->arch.comparecount_timer, expires,
				      HRTIMER_MODE_ABS);
		}
	}

	return count;
}