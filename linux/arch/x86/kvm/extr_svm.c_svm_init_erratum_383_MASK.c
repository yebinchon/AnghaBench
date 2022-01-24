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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_AMD64_DC_CFG ; 
 int /*<<< orphan*/  X86_BUG_AMD_TLB_MMATCH ; 
 int erratum_383_found ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 

__attribute__((used)) static void FUNC5(void)
{
	u32 low, high;
	int err;
	u64 val;

	if (!FUNC3(X86_BUG_AMD_TLB_MMATCH))
		return;

	/* Use _safe variants to not break nested virtualization */
	val = FUNC1(MSR_AMD64_DC_CFG, &err);
	if (err)
		return;

	val |= (1ULL << 47);

	low  = FUNC0(val);
	high = FUNC4(val);

	FUNC2(MSR_AMD64_DC_CFG, low, high);

	erratum_383_found = true;
}