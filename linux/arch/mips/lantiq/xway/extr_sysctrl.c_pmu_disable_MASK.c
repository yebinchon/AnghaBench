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
struct clk {int bits; int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_pmu_lock ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct clk *clk)
{
	int retry = 1000000;

	if (FUNC4("lantiq,ar10")
	    || FUNC4("lantiq,grx390")) {
		FUNC6(clk->bits, FUNC1(clk->module));
		do {} while (--retry &&
			     (FUNC5(FUNC3(clk->module)) & clk->bits));
	} else {
		FUNC8(&g_pmu_lock);
		FUNC6(FUNC5(FUNC0(clk->module)) | clk->bits,
				FUNC0(clk->module));
		do {} while (--retry &&
			     (!(FUNC5(FUNC2(clk->module)) & clk->bits)));
		FUNC9(&g_pmu_lock);
	}

	if (!retry)
		FUNC7("deactivating PMU module failed!");
}