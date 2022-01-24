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
struct cpuinfo_x86 {int /*<<< orphan*/ * x86_capability; } ;

/* Variables and functions */
 size_t CPUID_1_EDX ; 
 int /*<<< orphan*/  X86_FEATURE_CONSTANT_TSC ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*,void*,void*,void*) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ randomize_va_space ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct cpuinfo_x86 *c)
{
	unsigned int cap_mask, uk, max, dummy;
	unsigned int cms_rev1, cms_rev2;
	unsigned int cpu_rev, cpu_freq = 0, cpu_flags, new_cpu_rev;
	char cpu_info[65];

	FUNC4(c);

	FUNC0(c);

	/* Print CMS and CPU revision */
	max = FUNC2(0x80860000);
	cpu_rev = 0;
	if (max >= 0x80860001) {
		FUNC1(0x80860001, &dummy, &cpu_rev, &cpu_freq, &cpu_flags);
		if (cpu_rev != 0x02000000) {
			FUNC5("CPU: Processor revision %u.%u.%u.%u, %u MHz\n",
				(cpu_rev >> 24) & 0xff,
				(cpu_rev >> 16) & 0xff,
				(cpu_rev >> 8) & 0xff,
				cpu_rev & 0xff,
				cpu_freq);
		}
	}
	if (max >= 0x80860002) {
		FUNC1(0x80860002, &new_cpu_rev, &cms_rev1, &cms_rev2, &dummy);
		if (cpu_rev == 0x02000000) {
			FUNC5("CPU: Processor revision %08X, %u MHz\n",
				new_cpu_rev, cpu_freq);
		}
		FUNC5("CPU: Code Morphing Software revision %u.%u.%u-%u-%u\n",
		       (cms_rev1 >> 24) & 0xff,
		       (cms_rev1 >> 16) & 0xff,
		       (cms_rev1 >> 8) & 0xff,
		       cms_rev1 & 0xff,
		       cms_rev2);
	}
	if (max >= 0x80860006) {
		FUNC1(0x80860003,
		      (void *)&cpu_info[0],
		      (void *)&cpu_info[4],
		      (void *)&cpu_info[8],
		      (void *)&cpu_info[12]);
		FUNC1(0x80860004,
		      (void *)&cpu_info[16],
		      (void *)&cpu_info[20],
		      (void *)&cpu_info[24],
		      (void *)&cpu_info[28]);
		FUNC1(0x80860005,
		      (void *)&cpu_info[32],
		      (void *)&cpu_info[36],
		      (void *)&cpu_info[40],
		      (void *)&cpu_info[44]);
		FUNC1(0x80860006,
		      (void *)&cpu_info[48],
		      (void *)&cpu_info[52],
		      (void *)&cpu_info[56],
		      (void *)&cpu_info[60]);
		cpu_info[64] = '\0';
		FUNC5("CPU: %s\n", cpu_info);
	}

	/* Unhide possibly hidden capability flags */
	FUNC6(0x80860004, cap_mask, uk);
	FUNC8(0x80860004, ~0, uk);
	c->x86_capability[CPUID_1_EDX] = FUNC3(0x00000001);
	FUNC8(0x80860004, cap_mask, uk);

	/* All Transmeta CPUs have a constant TSC */
	FUNC7(c, X86_FEATURE_CONSTANT_TSC);

#ifdef CONFIG_SYSCTL
	/*
	 * randomize_va_space slows us down enormously;
	 * it probably triggers retranslation of x86->native bytecode
	 */
	randomize_va_space = 0;
#endif
}