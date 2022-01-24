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
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  scfr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 size_t MPC512x_CLK_REF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* clkregs ; 
 int /*<<< orphan*/ * clks ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct clk* FUNC7 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

__attribute__((used)) static void FUNC9(struct device_node *np, int bus_freq,
					int *sys_mul, int *sys_div,
					int *ips_div)
{
	struct clk *osc_clk;
	int calc_freq;

	/* fetch mul/div factors from the hardware */
	*sys_mul = FUNC3();
	*sys_mul *= 2;		/* compensate for the fractional divider */
	*sys_div = FUNC4();
	*ips_div = FUNC2(&clkregs->scfr1, 23, 3);

	/* lookup the oscillator clock for its rate */
	osc_clk = FUNC7(np, "osc");

	/*
	 * either descend from OSC to REF (and in bypassing verify the
	 * IPS rate), or backtrack from IPS and multiplier values that
	 * were fetched from hardware to REF and thus to the OSC value
	 *
	 * in either case the REF clock gets created here and the
	 * remainder of the clock tree can get spanned from there
	 */
	if (!FUNC0(osc_clk)) {
		clks[MPC512x_CLK_REF] = FUNC5("ref", "osc", 1, 1);
		calc_freq = FUNC1(clks[MPC512x_CLK_REF]);
		calc_freq *= *sys_mul;
		calc_freq /= *sys_div;
		calc_freq /= 2;
		calc_freq /= *ips_div;
		if (bus_freq && calc_freq != bus_freq)
			FUNC8("calc rate %d != OF spec %d\n",
				calc_freq, bus_freq);
	} else {
		calc_freq = bus_freq;	/* start with IPS */
		calc_freq *= *ips_div;	/* IPS -> CSB */
		calc_freq *= 2;		/* CSB -> SYS */
		calc_freq *= *sys_div;	/* SYS -> PLL out */
		calc_freq /= *sys_mul;	/* PLL out -> REF == OSC */
		clks[MPC512x_CLK_REF] = FUNC6("ref", calc_freq);
	}
}