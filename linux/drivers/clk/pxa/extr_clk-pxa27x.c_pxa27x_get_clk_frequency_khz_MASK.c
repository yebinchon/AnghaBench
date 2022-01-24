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
 scalar_t__ FUNC0 (struct clk*) ; 
 unsigned int KHz ; 
 struct clk* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/ * get_freq_khz ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 

unsigned int FUNC5(int info)
{
	struct clk *clk;
	unsigned long clks[5];
	int i;

	for (i = 0; i < 5; i++) {
		clk = FUNC1(NULL, get_freq_khz[i]);
		if (FUNC0(clk)) {
			clks[i] = 0;
		} else {
			clks[i] = FUNC2(clk);
			FUNC3(clk);
		}
	}
	if (info) {
		FUNC4("Run Mode clock: %ld.%02ldMHz\n",
			clks[1] / 1000000, (clks[1] % 1000000) / 10000);
		FUNC4("Turbo Mode clock: %ld.%02ldMHz\n",
			clks[2] / 1000000, (clks[2] % 1000000) / 10000);
		FUNC4("Memory clock: %ld.%02ldMHz\n",
			clks[3] / 1000000, (clks[3] % 1000000) / 10000);
		FUNC4("System bus clock: %ld.%02ldMHz\n",
			clks[4] / 1000000, (clks[4] % 1000000) / 10000);
	}
	return (unsigned int)clks[0] / KHz;
}