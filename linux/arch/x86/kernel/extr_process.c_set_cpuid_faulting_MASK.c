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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_MISC_FEATURES_ENABLES ; 
 int MSR_MISC_FEATURES_ENABLES_CPUID_FAULT ; 
 int MSR_MISC_FEATURES_ENABLES_CPUID_FAULT_BIT ; 
 int /*<<< orphan*/  msr_misc_features_shadow ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(bool on)
{
	u64 msrval;

	msrval = FUNC0(msr_misc_features_shadow);
	msrval &= ~MSR_MISC_FEATURES_ENABLES_CPUID_FAULT;
	msrval |= (on << MSR_MISC_FEATURES_ENABLES_CPUID_FAULT_BIT);
	FUNC1(msr_misc_features_shadow, msrval);
	FUNC2(MSR_MISC_FEATURES_ENABLES, msrval);
}