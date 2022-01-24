#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {struct clk* clk; TYPE_1__* freq_tbl; } ;
struct TYPE_3__ {int frequency; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 long FUNC2 (struct clk*,long) ; 
 int FUNC3 (struct clk*,long) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct clk* FUNC6 (long) ; 
 int FUNC7 (struct clk*,long) ; 
 TYPE_2__ spear_cpufreq ; 

__attribute__((used)) static int FUNC8(struct cpufreq_policy *policy,
		unsigned int index)
{
	long newfreq;
	struct clk *srcclk;
	int ret, mult = 1;

	newfreq = spear_cpufreq.freq_tbl[index].frequency * 1000;

	if (FUNC4("st,spear1340")) {
		/*
		 * SPEAr1340 is special in the sense that due to the possibility
		 * of multiple clock sources for cpu clk's parent we can have
		 * different clock source for different frequency of cpu clk.
		 * Hence we need to choose one from amongst these possible clock
		 * sources.
		 */
		srcclk = FUNC6(newfreq);
		if (FUNC0(srcclk)) {
			FUNC5("Failed to get src clk\n");
			return FUNC1(srcclk);
		}

		/* SPEAr1340: src clk is always 2 * intended cpu clk */
		mult = 2;
	} else {
		/*
		 * src clock to be altered is ancestor of cpu clock. Hence we
		 * can directly work on cpu clk
		 */
		srcclk = spear_cpufreq.clk;
	}

	newfreq = FUNC2(srcclk, newfreq * mult);
	if (newfreq <= 0) {
		FUNC5("clk_round_rate failed for cpu src clock\n");
		return newfreq;
	}

	if (mult == 2)
		ret = FUNC7(srcclk, newfreq);
	else
		ret = FUNC3(spear_cpufreq.clk, newfreq);

	if (ret)
		FUNC5("CPU Freq: cpu clk_set_rate failed: %d\n", ret);

	return ret;
}