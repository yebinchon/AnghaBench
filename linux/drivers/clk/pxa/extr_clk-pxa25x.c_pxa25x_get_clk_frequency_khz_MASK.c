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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 unsigned int KHz ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/ * get_freq_khz ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,unsigned long) ; 

unsigned int FUNC6(int info)
{
	struct clk *clk;
	unsigned long clks[5];
	int i;

	for (i = 0; i < FUNC0(get_freq_khz); i++) {
		clk = FUNC2(NULL, get_freq_khz[i]);
		if (FUNC1(clk)) {
			clks[i] = 0;
		} else {
			clks[i] = FUNC3(clk);
			FUNC4(clk);
		}
	}

	if (info) {
		FUNC5("Run Mode clock: %ld.%02ldMHz\n",
			clks[1] / 1000000, (clks[1] % 1000000) / 10000);
		FUNC5("Turbo Mode clock: %ld.%02ldMHz\n",
			clks[2] / 1000000, (clks[2] % 1000000) / 10000);
		FUNC5("Memory clock: %ld.%02ldMHz\n",
			clks[3] / 1000000, (clks[3] % 1000000) / 10000);
	}

	return (unsigned int)clks[0] / KHz;
}