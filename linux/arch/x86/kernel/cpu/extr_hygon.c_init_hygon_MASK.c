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
struct cpuinfo_x86 {int /*<<< orphan*/  apicid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_F10H_DECFG ; 
 int /*<<< orphan*/  MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT ; 
 int /*<<< orphan*/  X86_BUG_SYSRET_SS_ATTRS ; 
 int /*<<< orphan*/  X86_FEATURE_ARAT ; 
 int /*<<< orphan*/  X86_FEATURE_CPB ; 
 int /*<<< orphan*/  X86_FEATURE_LFENCE_RDTSC ; 
 int /*<<< orphan*/  X86_FEATURE_REP_GOOD ; 
 int /*<<< orphan*/  X86_FEATURE_XENPV ; 
 int /*<<< orphan*/  X86_FEATURE_XMM2 ; 
 int /*<<< orphan*/  X86_FEATURE_ZEN ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*) ; 
 scalar_t__ FUNC2 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cpuinfo_x86*) ; 

__attribute__((used)) static void FUNC12(struct cpuinfo_x86 *c)
{
	FUNC3(c);

	/*
	 * Bit 31 in normal CPUID used for nonstandard 3DNow ID;
	 * 3DNow is IDd by bit 31 in extended CPUID (1*32+31) anyway
	 */
	FUNC0(c, 0*32+31);

	FUNC10(c, X86_FEATURE_REP_GOOD);

	/* get apicid instead of initial apic id from cpuid */
	c->apicid = FUNC4();

	FUNC10(c, X86_FEATURE_ZEN);
	FUNC10(c, X86_FEATURE_CPB);

	FUNC1(c);

	FUNC5(c);
	FUNC6(c);
	FUNC11(c);

	FUNC7(c);

	if (FUNC2(c, X86_FEATURE_XMM2)) {
		/*
		 * Use LFENCE for execution serialization.  On families which
		 * don't have that MSR, LFENCE is already serializing.
		 * msr_set_bit() uses the safe accessors, too, even if the MSR
		 * is not present.
		 */
		FUNC8(MSR_F10H_DECFG,
			    MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT);

		/* A serializing LFENCE stops RDTSC speculation */
		FUNC10(c, X86_FEATURE_LFENCE_RDTSC);
	}

	/*
	 * Hygon processors have APIC timer running in deep C states.
	 */
	FUNC10(c, X86_FEATURE_ARAT);

	/* Hygon CPUs don't reset SS attributes on SYSRET, Xen does. */
	if (!FUNC2(c, X86_FEATURE_XENPV))
		FUNC9(c, X86_BUG_SYSRET_SS_ATTRS);
}