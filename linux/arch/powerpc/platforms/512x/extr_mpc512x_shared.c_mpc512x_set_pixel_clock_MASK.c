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
struct device_node {int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*,unsigned int) ; 
 struct clk* FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(unsigned int pixclock)
{
	struct device_node *np;
	struct clk *clk_diu;
	unsigned long epsilon, minpixclock, maxpixclock;
	unsigned long offset, want, got, delta;

	/* lookup and enable the DIU clock */
	np = FUNC7(NULL, NULL, "fsl,mpc5121-diu");
	if (!np) {
		FUNC10("Could not find DIU device tree node.\n");
		return;
	}
	clk_diu = FUNC6(np, 0);
	if (FUNC0(clk_diu)) {
		/* backwards compat with device trees that lack clock specs */
		clk_diu = FUNC3(np->name, "ipg");
	}
	FUNC8(np);
	if (FUNC0(clk_diu)) {
		FUNC10("Could not lookup DIU clock.\n");
		return;
	}
	if (FUNC4(clk_diu)) {
		FUNC10("Could not enable DIU clock.\n");
		return;
	}

	/*
	 * convert the picoseconds spec into the desired clock rate,
	 * determine the acceptable clock range for the monitor (+/- 5%),
	 * do the calculation in steps to avoid integer overflow
	 */
	FUNC9("DIU pixclock in ps - %u\n", pixclock);
	pixclock = (1000000000 / pixclock) * 1000;
	FUNC9("DIU pixclock freq  - %u\n", pixclock);
	epsilon = pixclock / 20; /* pixclock * 0.05 */
	FUNC9("DIU deviation      - %lu\n", epsilon);
	minpixclock = pixclock - epsilon;
	maxpixclock = pixclock + epsilon;
	FUNC9("DIU minpixclock    - %lu\n", minpixclock);
	FUNC9("DIU maxpixclock    - %lu\n", maxpixclock);

	/*
	 * check whether the DIU supports the desired pixel clock
	 *
	 * - simply request the desired clock and see what the
	 *   platform's clock driver will make of it, assuming that it
	 *   will setup the best approximation of the requested value
	 * - try other candidate frequencies in the order of decreasing
	 *   preference (i.e. with increasing distance from the desired
	 *   pixel clock, and checking the lower frequency before the
	 *   higher frequency to not overload the hardware) until the
	 *   first match is found -- any potential subsequent match
	 *   would only be as good as the former match or typically
	 *   would be less preferrable
	 *
	 * the offset increment of pixelclock divided by 64 is an
	 * arbitrary choice -- it's simple to calculate, in the typical
	 * case we expect the first check to succeed already, in the
	 * worst case seven frequencies get tested (the exact center and
	 * three more values each to the left and to the right) before
	 * the 5% tolerance window is exceeded, resulting in fast enough
	 * execution yet high enough probability of finding a suitable
	 * value, while the error rate will be in the order of single
	 * percents
	 */
	for (offset = 0; offset <= epsilon; offset += pixclock / 64) {
		want = pixclock - offset;
		FUNC9("DIU checking clock - %lu\n", want);
		FUNC5(clk_diu, want);
		got = FUNC2(clk_diu);
		delta = FUNC1(pixclock - got);
		if (delta < epsilon)
			break;
		if (!offset)
			continue;
		want = pixclock + offset;
		FUNC9("DIU checking clock - %lu\n", want);
		FUNC5(clk_diu, want);
		got = FUNC2(clk_diu);
		delta = FUNC1(pixclock - got);
		if (delta < epsilon)
			break;
	}
	if (offset <= epsilon) {
		FUNC9("DIU clock accepted - %lu\n", want);
		FUNC9("DIU pixclock want %u, got %lu, delta %lu, eps %lu\n",
			 pixclock, got, delta, epsilon);
		return;
	}
	FUNC11("DIU pixclock auto search unsuccessful\n");

	/*
	 * what is the most appropriate action to take when the search
	 * for an available pixel clock which is acceptable to the
	 * monitor has failed?  disable the DIU (clock) or just provide
	 * a "best effort"?  we go with the latter
	 */
	FUNC11("DIU pixclock best effort fallback (backend's choice)\n");
	FUNC5(clk_diu, pixclock);
	got = FUNC2(clk_diu);
	delta = FUNC1(pixclock - got);
	FUNC9("DIU pixclock want %u, got %lu, delta %lu, eps %lu\n",
		 pixclock, got, delta, epsilon);
}