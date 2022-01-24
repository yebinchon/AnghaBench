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
typedef  scalar_t__ u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {scalar_t__ count_hz; scalar_t__ count_bias; scalar_t__ count_dyn_bias; int /*<<< orphan*/  count_period; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct mips_coproc*) ; 

int FUNC7(struct kvm_vcpu *vcpu, s64 count_hz)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	int dc;
	ktime_t now;
	u32 count;

	/* ensure the frequency is in a sensible range... */
	if (count_hz <= 0 || count_hz > NSEC_PER_SEC)
		return -EINVAL;
	/* ... and has actually changed */
	if (vcpu->arch.count_hz == count_hz)
		return 0;

	/* Safely freeze timer so we can keep it continuous */
	dc = FUNC1(vcpu);
	if (dc) {
		now = FUNC2(vcpu);
		count = FUNC6(cop0);
	} else {
		now = FUNC3(vcpu, &count);
	}

	/* Update the frequency */
	vcpu->arch.count_hz = count_hz;
	vcpu->arch.count_period = FUNC0((u64)NSEC_PER_SEC << 32, count_hz);
	vcpu->arch.count_dyn_bias = 0;

	/* Calculate adjusted bias so dynamic count is unchanged */
	vcpu->arch.count_bias = count - FUNC4(vcpu, now);

	/* Update and resume hrtimer */
	if (!dc)
		FUNC5(vcpu, now, count);
	return 0;
}