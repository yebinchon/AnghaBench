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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static struct clk *FUNC4(unsigned long newfreq)
{
	struct clk *sys_pclk;
	int pclk;
	/*
	 * In SPEAr1340, cpu clk's parent sys clk can take input from
	 * following sources
	 */
	const char *sys_clk_src[] = {
		"sys_syn_clk",
		"pll1_clk",
		"pll2_clk",
		"pll3_clk",
	};

	/*
	 * As sys clk can have multiple source with their own range
	 * limitation so we choose possible sources accordingly
	 */
	if (newfreq <= 300000000)
		pclk = 0; /* src is sys_syn_clk */
	else if (newfreq > 300000000 && newfreq <= 500000000)
		pclk = 3; /* src is pll3_clk */
	else if (newfreq == 600000000)
		pclk = 1; /* src is pll1_clk */
	else
		return FUNC0(-EINVAL);

	/* Get parent to sys clock */
	sys_pclk = FUNC2(NULL, sys_clk_src[pclk]);
	if (FUNC1(sys_pclk))
		FUNC3("Failed to get %s clock\n", sys_clk_src[pclk]);

	return sys_pclk;
}