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
typedef  int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  comparecount_timer; int /*<<< orphan*/  count_hz; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int NSEC_PER_SEC ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mips_coproc*) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu,
				    ktime_t now, u32 count)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	u32 compare;
	u64 delta;
	ktime_t expire;

	/* Calculate timeout (wrap 0 to 2^32) */
	compare = FUNC4(cop0);
	delta = (u64)(u32)(compare - count - 1) + 1;
	delta = FUNC0(delta * NSEC_PER_SEC, vcpu->arch.count_hz);
	expire = FUNC3(now, delta);

	/* Update hrtimer to use new timeout */
	FUNC1(&vcpu->arch.comparecount_timer);
	FUNC2(&vcpu->arch.comparecount_timer, expire, HRTIMER_MODE_ABS);
}