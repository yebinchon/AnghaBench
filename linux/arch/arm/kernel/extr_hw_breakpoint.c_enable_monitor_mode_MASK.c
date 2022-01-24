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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
#define  ARM_DEBUG_ARCH_V6 132 
#define  ARM_DEBUG_ARCH_V6_1 131 
#define  ARM_DEBUG_ARCH_V7_1 130 
#define  ARM_DEBUG_ARCH_V7_ECP14 129 
#define  ARM_DEBUG_ARCH_V8 128 
 int ARM_DSCR_MDBGEN ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  c0 ; 
 int /*<<< orphan*/  c1 ; 
 int /*<<< orphan*/  c2 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(void)
{
	u32 dscr;
	FUNC0(c0, c1, 0, dscr);

	/* If monitor mode is already enabled, just return. */
	if (dscr & ARM_DSCR_MDBGEN)
		goto out;

	/* Write to the corresponding DSCR. */
	switch (FUNC2()) {
	case ARM_DEBUG_ARCH_V6:
	case ARM_DEBUG_ARCH_V6_1:
		FUNC1(c0, c1, 0, (dscr | ARM_DSCR_MDBGEN));
		break;
	case ARM_DEBUG_ARCH_V7_ECP14:
	case ARM_DEBUG_ARCH_V7_1:
	case ARM_DEBUG_ARCH_V8:
		FUNC1(c0, c2, 2, (dscr | ARM_DSCR_MDBGEN));
		FUNC3();
		break;
	default:
		return -ENODEV;
	}

	/* Check that the write made it through. */
	FUNC0(c0, c1, 0, dscr);
	if (!(dscr & ARM_DSCR_MDBGEN)) {
		FUNC4("Failed to enable monitor mode on CPU %d.\n",
				FUNC5());
		return -EPERM;
	}

out:
	return 0;
}