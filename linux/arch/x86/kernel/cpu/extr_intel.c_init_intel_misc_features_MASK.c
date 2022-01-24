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
typedef  int /*<<< orphan*/  u64 ;
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_MISC_FEATURES_ENABLES ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  msr_misc_features_shadow ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cpuinfo_x86 *c)
{
	u64 msr;

	if (FUNC2(MSR_MISC_FEATURES_ENABLES, &msr))
		return;

	/* Clear all MISC features */
	FUNC4(msr_misc_features_shadow, 0);

	/* Check features and update capabilities and shadow control bits */
	FUNC0(c);
	FUNC1(c);

	msr = FUNC3(msr_misc_features_shadow);
	FUNC5(MSR_MISC_FEATURES_ENABLES, msr);
}