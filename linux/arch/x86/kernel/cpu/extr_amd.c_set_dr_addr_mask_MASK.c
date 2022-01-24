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
 int /*<<< orphan*/  MSR_F16H_DR0_ADDR_MASK ; 
 int /*<<< orphan*/  MSR_F16H_DR1_ADDR_MASK ; 
 int /*<<< orphan*/  X86_FEATURE_BPEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC2(unsigned long mask, int dr)
{
	if (!FUNC0(X86_FEATURE_BPEXT))
		return;

	switch (dr) {
	case 0:
		FUNC1(MSR_F16H_DR0_ADDR_MASK, mask, 0);
		break;
	case 1:
	case 2:
	case 3:
		FUNC1(MSR_F16H_DR1_ADDR_MASK - 1 + dr, mask, 0);
		break;
	default:
		break;
	}
}