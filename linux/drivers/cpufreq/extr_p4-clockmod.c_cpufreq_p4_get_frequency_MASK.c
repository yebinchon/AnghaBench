#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpuinfo_x86 {int x86; int x86_model; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_CONST_LOOPS ; 
 scalar_t__ SPEEDSTEP_CPU_P4D ; 
 scalar_t__ SPEEDSTEP_CPU_P4M ; 
 scalar_t__ SPEEDSTEP_CPU_PCORE ; 
 scalar_t__ SPEEDSTEP_CPU_PM ; 
 int /*<<< orphan*/  X86_FEATURE_EST ; 
 scalar_t__ FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 TYPE_1__ p4clockmod_driver ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC5(struct cpuinfo_x86 *c)
{
	if (c->x86 == 0x06) {
		if (FUNC0(c, X86_FEATURE_EST))
			FUNC2("Warning: EST-capable CPU detected. The acpi-cpufreq module offers voltage scaling in addition to frequency scaling. You should use that instead of p4-clockmod, if possible.\n");
		switch (c->x86_model) {
		case 0x0E: /* Core */
		case 0x0F: /* Core Duo */
		case 0x16: /* Celeron Core */
		case 0x1C: /* Atom */
			p4clockmod_driver.flags |= CPUFREQ_CONST_LOOPS;
			return FUNC4(SPEEDSTEP_CPU_PCORE);
		case 0x0D: /* Pentium M (Dothan) */
			p4clockmod_driver.flags |= CPUFREQ_CONST_LOOPS;
			/* fall through */
		case 0x09: /* Pentium M (Banias) */
			return FUNC4(SPEEDSTEP_CPU_PM);
		}
	}

	if (c->x86 != 0xF)
		return 0;

	/* on P-4s, the TSC runs with constant frequency independent whether
	 * throttling is active or not. */
	p4clockmod_driver.flags |= CPUFREQ_CONST_LOOPS;

	if (FUNC3() == SPEEDSTEP_CPU_P4M) {
		FUNC1("Warning: Pentium 4-M detected. The speedstep-ich or acpi cpufreq modules offer voltage scaling in addition of frequency scaling. You should use either one instead of p4-clockmod, if possible.\n");
		return FUNC4(SPEEDSTEP_CPU_P4M);
	}

	return FUNC4(SPEEDSTEP_CPU_P4D);
}