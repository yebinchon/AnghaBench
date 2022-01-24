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
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_PLATFORM_INFO ; 
 int MSR_PLATFORM_INFO_CPUID_FAULT ; 
 int /*<<< orphan*/  X86_FEATURE_CPUID_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpuinfo_x86 *c)
{
	u64 msr;

	if (!FUNC0(MSR_PLATFORM_INFO, &msr)) {
		if (msr & MSR_PLATFORM_INFO_CPUID_FAULT)
			FUNC1(c, X86_FEATURE_CPUID_FAULT);
	}
}