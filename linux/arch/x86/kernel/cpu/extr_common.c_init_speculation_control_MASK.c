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
 int /*<<< orphan*/  X86_FEATURE_AMD_IBPB ; 
 int /*<<< orphan*/  X86_FEATURE_AMD_IBRS ; 
 int /*<<< orphan*/  X86_FEATURE_AMD_SSBD ; 
 int /*<<< orphan*/  X86_FEATURE_AMD_STIBP ; 
 int /*<<< orphan*/  X86_FEATURE_IBPB ; 
 int /*<<< orphan*/  X86_FEATURE_IBRS ; 
 int /*<<< orphan*/  X86_FEATURE_INTEL_STIBP ; 
 int /*<<< orphan*/  X86_FEATURE_MSR_SPEC_CTRL ; 
 int /*<<< orphan*/  X86_FEATURE_SPEC_CTRL ; 
 int /*<<< orphan*/  X86_FEATURE_SPEC_CTRL_SSBD ; 
 int /*<<< orphan*/  X86_FEATURE_SSBD ; 
 int /*<<< orphan*/  X86_FEATURE_STIBP ; 
 int /*<<< orphan*/  X86_FEATURE_VIRT_SSBD ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cpuinfo_x86 *c)
{
	/*
	 * The Intel SPEC_CTRL CPUID bit implies IBRS and IBPB support,
	 * and they also have a different bit for STIBP support. Also,
	 * a hypervisor might have set the individual AMD bits even on
	 * Intel CPUs, for finer-grained selection of what's available.
	 */
	if (FUNC1(c, X86_FEATURE_SPEC_CTRL)) {
		FUNC2(c, X86_FEATURE_IBRS);
		FUNC2(c, X86_FEATURE_IBPB);
		FUNC2(c, X86_FEATURE_MSR_SPEC_CTRL);
	}

	if (FUNC1(c, X86_FEATURE_INTEL_STIBP))
		FUNC2(c, X86_FEATURE_STIBP);

	if (FUNC1(c, X86_FEATURE_SPEC_CTRL_SSBD) ||
	    FUNC1(c, X86_FEATURE_VIRT_SSBD))
		FUNC2(c, X86_FEATURE_SSBD);

	if (FUNC1(c, X86_FEATURE_AMD_IBRS)) {
		FUNC2(c, X86_FEATURE_IBRS);
		FUNC2(c, X86_FEATURE_MSR_SPEC_CTRL);
	}

	if (FUNC1(c, X86_FEATURE_AMD_IBPB))
		FUNC2(c, X86_FEATURE_IBPB);

	if (FUNC1(c, X86_FEATURE_AMD_STIBP)) {
		FUNC2(c, X86_FEATURE_STIBP);
		FUNC2(c, X86_FEATURE_MSR_SPEC_CTRL);
	}

	if (FUNC1(c, X86_FEATURE_AMD_SSBD)) {
		FUNC2(c, X86_FEATURE_SSBD);
		FUNC2(c, X86_FEATURE_MSR_SPEC_CTRL);
		FUNC0(c, X86_FEATURE_VIRT_SSBD);
	}
}