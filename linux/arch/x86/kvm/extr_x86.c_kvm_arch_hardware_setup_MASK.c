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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int (* hardware_setup ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long long kvm_default_tsc_scaling_ratio ; 
 scalar_t__ kvm_has_tsc_control ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kvm_max_guest_tsc_khz ; 
 int /*<<< orphan*/  kvm_max_tsc_scaling_ratio ; 
 unsigned long long kvm_tsc_scaling_ratio_frac_bits ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  tsc_khz ; 

int FUNC4(void)
{
	int r;

	r = kvm_x86_ops->hardware_setup();
	if (r != 0)
		return r;

	if (kvm_has_tsc_control) {
		/*
		 * Make sure the user can only configure tsc_khz values that
		 * fit into a signed integer.
		 * A min value is not calculated because it will always
		 * be 1 on all machines.
		 */
		u64 max = FUNC2(0x7fffffffULL,
			      FUNC0(kvm_max_tsc_scaling_ratio, tsc_khz));
		kvm_max_guest_tsc_khz = max;

		kvm_default_tsc_scaling_ratio = 1ULL << kvm_tsc_scaling_ratio_frac_bits;
	}

	FUNC1();
	return 0;
}