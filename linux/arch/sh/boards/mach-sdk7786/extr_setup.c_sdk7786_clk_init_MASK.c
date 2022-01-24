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
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  MODE_PIN9 ; 
 int FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  sdk7786_pcie_cl ; 
 int /*<<< orphan*/  sdk7786_pcie_clk ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct clk *clk;
	int ret;

	/*
	 * Only handle the EXTAL case, anyone interfacing a crystal
	 * resonator will need to provide their own input clock.
	 */
	if (FUNC8(MODE_PIN9))
		return -EINVAL;

	clk = FUNC2(NULL, "extal");
	if (FUNC0(clk))
		return FUNC1(clk);
	ret = FUNC5(clk, 33333333);
	FUNC3(clk);

	/*
	 * Setup the FPGA clocks.
	 */
	ret = FUNC4(&sdk7786_pcie_clk);
	if (FUNC9(ret)) {
		FUNC7("FPGA clock registration failed\n");
		return ret;
	}

	FUNC6(&sdk7786_pcie_cl);

	return 0;
}