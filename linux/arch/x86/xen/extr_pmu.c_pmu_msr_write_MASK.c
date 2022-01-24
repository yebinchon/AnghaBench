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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ x86_vendor; } ;

/* Variables and functions */
 scalar_t__ X86_VENDOR_INTEL ; 
 TYPE_1__ boot_cpu_data ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,int*,int*) ; 
 int FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int*,int,int,int /*<<< orphan*/ ) ; 

bool FUNC5(unsigned int msr, uint32_t low, uint32_t high, int *err)
{
	uint64_t val = ((uint64_t)high << 32) | low;

	if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL) {
		if (FUNC0(msr)) {
			if (!FUNC3(msr, &val, 0))
				*err = FUNC2(msr, low, high);
			return true;
		}
	} else {
		int type, index;

		if (FUNC1(msr, &type, &index)) {
			if (!FUNC4(msr, &val, type, index, 0))
				*err = FUNC2(msr, low, high);
			return true;
		}
	}

	return false;
}