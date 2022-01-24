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
struct cpuinfo_x86 {int x86; int /*<<< orphan*/  apicid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_F10H_DECFG ; 
 int /*<<< orphan*/  MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT ; 
 int /*<<< orphan*/  X86_BUG_FXSAVE_LEAK ; 
 int /*<<< orphan*/  X86_BUG_SYSRET_SS_ATTRS ; 
 int /*<<< orphan*/  X86_FEATURE_3DNOW ; 
 int /*<<< orphan*/  X86_FEATURE_3DNOWPREFETCH ; 
 int /*<<< orphan*/  X86_FEATURE_ARAT ; 
 int /*<<< orphan*/  X86_FEATURE_LFENCE_RDTSC ; 
 int /*<<< orphan*/  X86_FEATURE_LM ; 
 int X86_FEATURE_MCE ; 
 int /*<<< orphan*/  X86_FEATURE_REP_GOOD ; 
 int /*<<< orphan*/  X86_FEATURE_XENPV ; 
 int /*<<< orphan*/  X86_FEATURE_XMM2 ; 
 int /*<<< orphan*/  X86_FEATURE_XSAVEERPTR ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuinfo_x86*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuinfo_x86*) ; 
 scalar_t__ FUNC4 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC12 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC13 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC14 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC15 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC16 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct cpuinfo_x86*) ; 

__attribute__((used)) static void FUNC21(struct cpuinfo_x86 *c)
{
	FUNC5(c);

	/*
	 * Bit 31 in normal CPUID used for nonstandard 3DNow ID;
	 * 3DNow is IDd by bit 31 in extended CPUID (1*32+31) anyway
	 */
	FUNC2(c, 0*32+31);

	if (c->x86 >= 0x10)
		FUNC19(c, X86_FEATURE_REP_GOOD);

	/* get apicid instead of initial apic id from cpuid */
	c->apicid = FUNC6();

	/* K6s reports MCEs but don't actually have all the MSRs */
	if (c->x86 < 6)
		FUNC2(c, X86_FEATURE_MCE);

	switch (c->x86) {
	case 4:    FUNC11(c); break;
	case 5:    FUNC12(c); break;
	case 6:	   FUNC13(c); break;
	case 0xf:  FUNC14(c); break;
	case 0x10: FUNC9(c); break;
	case 0x12: FUNC15(c); break;
	case 0x15: FUNC7(c); break;
	case 0x16: FUNC10(c); break;
	case 0x17: FUNC16(c); break;
	}

	/*
	 * Enable workaround for FXSAVE leak on CPUs
	 * without a XSaveErPtr feature
	 */
	if ((c->x86 >= 6) && (!FUNC4(c, X86_FEATURE_XSAVEERPTR)))
		FUNC18(c, X86_BUG_FXSAVE_LEAK);

	FUNC3(c);

	FUNC0(c);
	FUNC1(c);
	FUNC20(c);

	FUNC8(c);

	if (FUNC4(c, X86_FEATURE_XMM2)) {
		/*
		 * Use LFENCE for execution serialization.  On families which
		 * don't have that MSR, LFENCE is already serializing.
		 * msr_set_bit() uses the safe accessors, too, even if the MSR
		 * is not present.
		 */
		FUNC17(MSR_F10H_DECFG,
			    MSR_F10H_DECFG_LFENCE_SERIALIZE_BIT);

		/* A serializing LFENCE stops RDTSC speculation */
		FUNC19(c, X86_FEATURE_LFENCE_RDTSC);
	}

	/*
	 * Family 0x12 and above processors have APIC timer
	 * running in deep C states.
	 */
	if (c->x86 > 0x11)
		FUNC19(c, X86_FEATURE_ARAT);

	/* 3DNow or LM implies PREFETCHW */
	if (!FUNC4(c, X86_FEATURE_3DNOWPREFETCH))
		if (FUNC4(c, X86_FEATURE_3DNOW) || FUNC4(c, X86_FEATURE_LM))
			FUNC19(c, X86_FEATURE_3DNOWPREFETCH);

	/* AMD CPUs don't reset SS attributes on SYSRET, Xen does. */
	if (!FUNC4(c, X86_FEATURE_XENPV))
		FUNC18(c, X86_BUG_SYSRET_SS_ATTRS);
}