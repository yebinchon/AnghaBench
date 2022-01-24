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
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 int CPUFREQ_HIGH ; 
 int CPUFREQ_LOW ; 
 int /*<<< orphan*/  CPU_FTR_L3CR ; 
 unsigned long L3CR_L3E ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cur_freq ; 
 int /*<<< orphan*/  hi_freq ; 
 int /*<<< orphan*/  low_freq ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy, int speed_mode)
{
	unsigned long l3cr;
	static unsigned long prev_l3cr;

	if (speed_mode == CPUFREQ_LOW &&
	    FUNC2(CPU_FTR_L3CR)) {
		l3cr = FUNC0();
		if (l3cr & L3CR_L3E) {
			prev_l3cr = l3cr;
			FUNC1(0);
		}
	}
	FUNC3(speed_mode == CPUFREQ_LOW);
	if (speed_mode == CPUFREQ_HIGH &&
	    FUNC2(CPU_FTR_L3CR)) {
		l3cr = FUNC0();
		if ((prev_l3cr & L3CR_L3E) && l3cr != prev_l3cr)
			FUNC1(prev_l3cr);
	}
	cur_freq = (speed_mode == CPUFREQ_HIGH) ? hi_freq : low_freq;

	return 0;
}