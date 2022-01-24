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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ ARM_BASE_BCR ; 
 scalar_t__ ARM_BASE_BVR ; 
 scalar_t__ ARM_BASE_WCR ; 
 scalar_t__ ARM_BASE_WVR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  ARM_DEBUG_ARCH_V6 131 
#define  ARM_DEBUG_ARCH_V6_1 130 
#define  ARM_DEBUG_ARCH_V7_1 129 
#define  ARM_DEBUG_ARCH_V7_ECP14 128 
 int /*<<< orphan*/  CORESIGHT_UNLOCK ; 
 int EPERM ; 
 int /*<<< orphan*/  c0 ; 
 int /*<<< orphan*/  c1 ; 
 int /*<<< orphan*/  c3 ; 
 int /*<<< orphan*/  c5 ; 
 int /*<<< orphan*/  c7 ; 
 int core_num_wrps ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int debug_arch ; 
 int /*<<< orphan*/  debug_err_mask ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  has_ossr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,unsigned long) ; 

__attribute__((used)) static void FUNC10(unsigned int cpu)
{
	int i, raw_num_brps, err = 0;
	u32 val;

	/*
	 * v7 debug contains save and restore registers so that debug state
	 * can be maintained across low-power modes without leaving the debug
	 * logic powered up. It is IMPLEMENTATION DEFINED whether we can access
	 * the debug registers out of reset, so we must unlock the OS Lock
	 * Access Register to avoid taking undefined instruction exceptions
	 * later on.
	 */
	switch (debug_arch) {
	case ARM_DEBUG_ARCH_V6:
	case ARM_DEBUG_ARCH_V6_1:
		/* ARMv6 cores clear the registers out of reset. */
		goto out_mdbgen;
	case ARM_DEBUG_ARCH_V7_ECP14:
		/*
		 * Ensure sticky power-down is clear (i.e. debug logic is
		 * powered up).
		 */
		FUNC0(c1, c5, 4, val);
		if ((val & 0x1) == 0)
			err = -EPERM;

		if (!has_ossr)
			goto clear_vcr;
		break;
	case ARM_DEBUG_ARCH_V7_1:
		/*
		 * Ensure the OS double lock is clear.
		 */
		FUNC0(c1, c3, 4, val);
		if ((val & 0x1) == 1)
			err = -EPERM;
		break;
	}

	if (err) {
		FUNC8("CPU %d debug is powered down!\n", cpu);
		FUNC4(&debug_err_mask, &debug_err_mask, FUNC3(cpu));
		return;
	}

	/*
	 * Unconditionally clear the OS lock by writing a value
	 * other than CS_LAR_KEY to the access register.
	 */
	FUNC1(c1, c0, 4, ~CORESIGHT_UNLOCK);
	FUNC7();

	/*
	 * Clear any configured vector-catch events before
	 * enabling monitor mode.
	 */
clear_vcr:
	FUNC1(c0, c7, 0, 0);
	FUNC7();

	if (FUNC2(&debug_err_mask, FUNC3(cpu))) {
		FUNC8("CPU %d failed to disable vector catch\n", cpu);
		return;
	}

	/*
	 * The control/value register pairs are UNKNOWN out of reset so
	 * clear them to avoid spurious debug events.
	 */
	raw_num_brps = FUNC6();
	for (i = 0; i < raw_num_brps; ++i) {
		FUNC9(ARM_BASE_BCR + i, 0UL);
		FUNC9(ARM_BASE_BVR + i, 0UL);
	}

	for (i = 0; i < core_num_wrps; ++i) {
		FUNC9(ARM_BASE_WCR + i, 0UL);
		FUNC9(ARM_BASE_WVR + i, 0UL);
	}

	if (FUNC2(&debug_err_mask, FUNC3(cpu))) {
		FUNC8("CPU %d failed to clear debug register pairs\n", cpu);
		return;
	}

	/*
	 * Have a crack at enabling monitor mode. We don't actually need
	 * it yet, but reporting an error early is useful if it fails.
	 */
out_mdbgen:
	if (FUNC5())
		FUNC4(&debug_err_mask, &debug_err_mask, FUNC3(cpu));
}