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
typedef  int u64 ;
typedef  int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_3__ {int count_ctl; void* count_resume; int /*<<< orphan*/  count_hz; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int s64 ;
typedef  void* ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* queue_timer_int ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int CAUSEF_DC ; 
 int EINVAL ; 
 int KVM_REG_MIPS_COUNT_CTL_DC ; 
 int NSEC_PER_SEC ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int) ; 
 scalar_t__ FUNC2 (void*,void*) ; 
 void* FUNC3 () ; 
 TYPE_2__* kvm_mips_callbacks ; 
 void* FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,void*,int) ; 
 int FUNC7 (struct mips_coproc*) ; 
 int FUNC8 (struct mips_coproc*) ; 
 int FUNC9 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 

int FUNC11(struct kvm_vcpu *vcpu, s64 count_ctl)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	s64 changed = count_ctl ^ vcpu->arch.count_ctl;
	s64 delta;
	ktime_t expire, now;
	u32 count, compare;

	/* Only allow defined bits to be changed */
	if (changed & ~(s64)(KVM_REG_MIPS_COUNT_CTL_DC))
		return -EINVAL;

	/* Apply new value */
	vcpu->arch.count_ctl = count_ctl;

	/* Master CP0_Count disable */
	if (changed & KVM_REG_MIPS_COUNT_CTL_DC) {
		/* Is CP0_Cause.DC already disabling CP0_Count? */
		if (FUNC7(cop0) & CAUSEF_DC) {
			if (count_ctl & KVM_REG_MIPS_COUNT_CTL_DC)
				/* Just record the current time */
				vcpu->arch.count_resume = FUNC3();
		} else if (count_ctl & KVM_REG_MIPS_COUNT_CTL_DC) {
			/* disable timer and record current time */
			vcpu->arch.count_resume = FUNC4(vcpu);
		} else {
			/*
			 * Calculate timeout relative to static count at resume
			 * time (wrap 0 to 2^32).
			 */
			count = FUNC9(cop0);
			compare = FUNC8(cop0);
			delta = (u64)(u32)(compare - count - 1) + 1;
			delta = FUNC0(delta * NSEC_PER_SEC,
					vcpu->arch.count_hz);
			expire = FUNC1(vcpu->arch.count_resume, delta);

			/* Handle pending interrupt */
			now = FUNC3();
			if (FUNC2(now, expire) >= 0)
				/* Nothing should be waiting on the timeout */
				kvm_mips_callbacks->queue_timer_int(vcpu);

			/* Resume hrtimer without changing bias */
			count = FUNC5(vcpu, now);
			FUNC6(vcpu, now, count);
		}
	}

	return 0;
}