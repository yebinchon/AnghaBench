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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_PM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_AMD64_CPUID_FN_1 ; 
 int /*<<< orphan*/  X86_FEATURE_RDRAND ; 
 int /*<<< orphan*/  FUNC2 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ rdrand_force ; 

__attribute__((used)) static void FUNC6(struct cpuinfo_x86 *c)
{
	/*
	 * Saving of the MSR used to hide the RDRAND support during
	 * suspend/resume is done by arch/x86/power/cpu.c, which is
	 * dependent on CONFIG_PM_SLEEP.
	 */
	if (!FUNC1(CONFIG_PM_SLEEP))
		return;

	/*
	 * The nordrand option can clear X86_FEATURE_RDRAND, so check for
	 * RDRAND support using the CPUID function directly.
	 */
	if (!(FUNC3(1) & FUNC0(30)) || rdrand_force)
		return;

	FUNC4(MSR_AMD64_CPUID_FN_1, 62);

	/*
	 * Verify that the CPUID change has occurred in case the kernel is
	 * running virtualized and the hypervisor doesn't support the MSR.
	 */
	if (FUNC3(1) & FUNC0(30)) {
		FUNC5("BIOS may not properly restore RDRAND after suspend, but hypervisor does not support hiding RDRAND via CPUID.\n");
		return;
	}

	FUNC2(c, X86_FEATURE_RDRAND);
	FUNC5("BIOS may not properly restore RDRAND after suspend, hiding RDRAND via CPUID. Use rdrand=force to reenable.\n");
}