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
typedef  int /*<<< orphan*/  u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  comparecount_timer; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_coproc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC4(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	u32 count;
	ktime_t now;

	/* Stop hrtimer */
	FUNC0(&vcpu->arch.comparecount_timer);

	/* Set the static count from the dynamic count, handling pending TI */
	now = FUNC1();
	count = FUNC2(vcpu, now);
	FUNC3(cop0, count);

	return now;
}