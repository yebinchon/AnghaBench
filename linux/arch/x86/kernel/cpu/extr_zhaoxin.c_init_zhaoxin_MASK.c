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
struct cpuinfo_x86 {int cpuid_level; int x86; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_ARCH_PERFMON ; 
 int /*<<< orphan*/  X86_FEATURE_LFENCE_RDTSC ; 
 int /*<<< orphan*/  X86_FEATURE_VMX ; 
 scalar_t__ FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuinfo_x86*) ; 

__attribute__((used)) static void FUNC9(struct cpuinfo_x86 *c)
{
	FUNC4(c);
	FUNC5(c);
	FUNC3(c);
#ifdef CONFIG_X86_32
	detect_ht(c);
#endif

	if (c->cpuid_level > 9) {
		unsigned int eax = FUNC1(10);

		/*
		 * Check for version and the number of counters
		 * Version(eax[7:0]) can't be 0;
		 * Counters(eax[15:8]) should be greater than 1;
		 */
		if ((eax & 0xff) && (((eax >> 8) & 0xff) > 1))
			FUNC7(c, X86_FEATURE_ARCH_PERFMON);
	}

	if (c->x86 >= 0x6)
		FUNC6(c);
#ifdef CONFIG_X86_64
	set_cpu_cap(c, X86_FEATURE_LFENCE_RDTSC);
#endif

	if (FUNC0(c, X86_FEATURE_VMX))
		FUNC8(c);
}