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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCLK_BURST_POLICY ; 
 int CLK_IS_CRITICAL ; 
 int CLK_SET_RATE_PARENT ; 
 scalar_t__ SCLK_BURST_POLICY ; 
 size_t TEGRA20_CLK_CCLK ; 
 size_t TEGRA20_CLK_SCLK ; 
 size_t TEGRA20_CLK_TWD ; 
 int /*<<< orphan*/  cclk_parents ; 
 scalar_t__ clk_base ; 
 struct clk* FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int,int) ; 
 struct clk** clks ; 
 int /*<<< orphan*/  sclk_parents ; 
 struct clk* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct clk *clk;

	/* CCLK */
	clk = FUNC2("cclk", cclk_parents,
			      FUNC0(cclk_parents), CLK_SET_RATE_PARENT,
			      clk_base + CCLK_BURST_POLICY, 0, 4, 0, 0, NULL);
	clks[TEGRA20_CLK_CCLK] = clk;

	/* SCLK */
	clk = FUNC2("sclk", sclk_parents,
			      FUNC0(sclk_parents),
			      CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
			      clk_base + SCLK_BURST_POLICY, 0, 4, 0, 0, NULL);
	clks[TEGRA20_CLK_SCLK] = clk;

	/* twd */
	clk = FUNC1(NULL, "twd", "cclk", 0, 1, 4);
	clks[TEGRA20_CLK_TWD] = clk;
}