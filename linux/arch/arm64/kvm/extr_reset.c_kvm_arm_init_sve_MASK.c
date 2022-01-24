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

/* Variables and functions */
 scalar_t__ SVE_VL_ARCH_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ kvm_sve_max_vl ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ sve_max_virtualisable_vl ; 
 scalar_t__ sve_max_vl ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(void)
{
	if (FUNC2()) {
		kvm_sve_max_vl = sve_max_virtualisable_vl;

		/*
		 * The get_sve_reg()/set_sve_reg() ioctl interface will need
		 * to be extended with multiple register slice support in
		 * order to support vector lengths greater than
		 * SVE_VL_ARCH_MAX:
		 */
		if (FUNC0(kvm_sve_max_vl > SVE_VL_ARCH_MAX))
			kvm_sve_max_vl = SVE_VL_ARCH_MAX;

		/*
		 * Don't even try to make use of vector lengths that
		 * aren't available on all CPUs, for now:
		 */
		if (kvm_sve_max_vl < sve_max_vl)
			FUNC1("KVM: SVE vector length for guests limited to %u bytes\n",
				kvm_sve_max_vl);
	}

	return 0;
}