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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
#define  ARM_DEBUG_ARCH_V7_1 129 
#define  ARM_DEBUG_ARCH_V7_ECP14 128 
 int ARM_OSLSR_OSLM0 ; 
 int /*<<< orphan*/  c1 ; 
 int FUNC1 () ; 

__attribute__((used)) static bool FUNC2(void)
{
	u32 oslsr;

	switch (FUNC1()) {
	case ARM_DEBUG_ARCH_V7_1:
		return true;
	case ARM_DEBUG_ARCH_V7_ECP14:
		FUNC0(c1, c1, 4, oslsr);
		if (oslsr & ARM_OSLSR_OSLM0)
			return true;
		/* Else, fall through */
	default:
		return false;
	}
}