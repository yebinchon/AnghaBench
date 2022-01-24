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
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_CPUID ; 
 int /*<<< orphan*/  X86_FEATURE_FPU ; 
 int /*<<< orphan*/  boot_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_caps_cleared ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cpuinfo_x86 *c)
{
	if (!FUNC0(X86_FEATURE_CPUID) &&
	    !FUNC5(X86_FEATURE_FPU, (unsigned long *)cpu_caps_cleared)) {
		if (FUNC1())
			FUNC4(X86_FEATURE_FPU);
		else
			FUNC3(X86_FEATURE_FPU);
	}

#ifndef CONFIG_MATH_EMULATION
	if (!FUNC6(&boot_cpu_data, X86_FEATURE_FPU)) {
		FUNC2("x86/fpu: Giving up, no FPU found and no math emulation present\n");
		for (;;)
			asm volatile("hlt");
	}
#endif
}