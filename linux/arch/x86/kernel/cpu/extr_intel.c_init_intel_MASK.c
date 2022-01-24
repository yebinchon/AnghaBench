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
struct cpuinfo_x86 {int cpuid_level; int x86; int x86_model; int x86_cache_alignment; int x86_clflush_size; unsigned int x86_cache_size; int x86_stepping; int /*<<< orphan*/  x86_model_id; } ;

/* Variables and functions */
 int INTEL_FAM6_ATOM_GOLDMONT ; 
 int /*<<< orphan*/  MSR_IA32_MISC_ENABLE ; 
 scalar_t__ TSX_CTRL_DISABLE ; 
 scalar_t__ TSX_CTRL_ENABLE ; 
 int /*<<< orphan*/  X86_BUG_CLFLUSH_MONITOR ; 
 int /*<<< orphan*/  X86_BUG_MONITOR ; 
 int /*<<< orphan*/  X86_FEATURE_ARCH_PERFMON ; 
 int /*<<< orphan*/  X86_FEATURE_BTS ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int /*<<< orphan*/  X86_FEATURE_DS ; 
 int /*<<< orphan*/  X86_FEATURE_LFENCE_RDTSC ; 
 int /*<<< orphan*/  X86_FEATURE_MWAIT ; 
 int /*<<< orphan*/  X86_FEATURE_P3 ; 
 int /*<<< orphan*/  X86_FEATURE_P4 ; 
 int /*<<< orphan*/  X86_FEATURE_PEBS ; 
 int /*<<< orphan*/  X86_FEATURE_REP_GOOD ; 
 int /*<<< orphan*/  X86_FEATURE_TME ; 
 int /*<<< orphan*/  X86_FEATURE_VMX ; 
 int /*<<< orphan*/  X86_FEATURE_XMM2 ; 
 int /*<<< orphan*/  X86_FEATURE_XTOPOLOGY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ tsx_ctrl_state ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void FUNC19(struct cpuinfo_x86 *c)
{
	FUNC8(c);

	FUNC11(c);

	/*
	 * Detect the extended topology information if available. This
	 * will reinitialise the initial_apicid which will be used
	 * in init_intel_cacheinfo()
	 */
	FUNC3(c);

	if (!FUNC1(c, X86_FEATURE_XTOPOLOGY)) {
		/*
		 * let's use the legacy cpuid vector 0x1 and 0x4 for topology
		 * detection.
		 */
		FUNC5(c);
#ifdef CONFIG_X86_32
		detect_ht(c);
#endif
	}

	FUNC9(c);

	if (c->cpuid_level > 9) {
		unsigned eax = FUNC2(10);
		/* Check for version and the number of counters */
		if ((eax & 0xff) && (((eax>>8) & 0xff) > 1))
			FUNC14(c, X86_FEATURE_ARCH_PERFMON);
	}

	if (FUNC1(c, X86_FEATURE_XMM2))
		FUNC14(c, X86_FEATURE_LFENCE_RDTSC);

	if (FUNC0(X86_FEATURE_DS)) {
		unsigned int l1, l2;

		FUNC12(MSR_IA32_MISC_ENABLE, l1, l2);
		if (!(l1 & (1<<11)))
			FUNC14(c, X86_FEATURE_BTS);
		if (!(l1 & (1<<12)))
			FUNC14(c, X86_FEATURE_PEBS);
	}

	if (c->x86 == 6 && FUNC0(X86_FEATURE_CLFLUSH) &&
	    (c->x86_model == 29 || c->x86_model == 46 || c->x86_model == 47))
		FUNC13(c, X86_BUG_CLFLUSH_MONITOR);

	if (c->x86 == 6 && FUNC0(X86_FEATURE_MWAIT) &&
		((c->x86_model == INTEL_FAM6_ATOM_GOLDMONT)))
		FUNC13(c, X86_BUG_MONITOR);

#ifdef CONFIG_X86_64
	if (c->x86 == 15)
		c->x86_cache_alignment = c->x86_clflush_size * 2;
	if (c->x86 == 6)
		set_cpu_cap(c, X86_FEATURE_REP_GOOD);
#else
	/*
	 * Names for the Pentium II/Celeron processors
	 * detectable only by also checking the cache size.
	 * Dixon is NOT a Celeron.
	 */
	if (c->x86 == 6) {
		unsigned int l2 = c->x86_cache_size;
		char *p = NULL;

		switch (c->x86_model) {
		case 5:
			if (l2 == 0)
				p = "Celeron (Covington)";
			else if (l2 == 256)
				p = "Mobile Pentium II (Dixon)";
			break;

		case 6:
			if (l2 == 128)
				p = "Celeron (Mendocino)";
			else if (c->x86_stepping == 0 || c->x86_stepping == 5)
				p = "Celeron-A";
			break;

		case 8:
			if (l2 == 128)
				p = "Celeron (Coppermine)";
			break;
		}

		if (p)
			FUNC16(c->x86_model_id, p);
	}

	if (c->x86 == 15)
		FUNC14(c, X86_FEATURE_P4);
	if (c->x86 == 6)
		FUNC14(c, X86_FEATURE_P3);
#endif

	/* Work around errata */
	FUNC15(c);

	if (FUNC1(c, X86_FEATURE_VMX))
		FUNC7(c);

	if (FUNC1(c, X86_FEATURE_TME))
		FUNC6(c);

	FUNC10(c);

	if (tsx_ctrl_state == TSX_CTRL_ENABLE)
		FUNC18();
	if (tsx_ctrl_state == TSX_CTRL_DISABLE)
		FUNC17();
}