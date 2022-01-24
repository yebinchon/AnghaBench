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
struct mmp_clk_unit {int dummy; } ;
struct pxa910_clk_unit {scalar_t__ mpmu_base; struct mmp_clk_unit unit; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 scalar_t__ MPMU_UART_PLL ; 
 int /*<<< orphan*/  PXA910_CLK_UART_PLL ; 
 int /*<<< orphan*/  fixed_factor_clks ; 
 int /*<<< orphan*/  fixed_rate_clks ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_unit*,int /*<<< orphan*/ ,struct clk*) ; 
 struct clk* FUNC2 (char*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_factor_masks ; 
 int /*<<< orphan*/  uart_factor_tbl ; 

__attribute__((used)) static void FUNC5(struct pxa910_clk_unit *pxa_unit)
{
	struct clk *clk;
	struct mmp_clk_unit *unit = &pxa_unit->unit;

	FUNC4(unit, fixed_rate_clks,
					FUNC0(fixed_rate_clks));

	FUNC3(unit, fixed_factor_clks,
					FUNC0(fixed_factor_clks));

	clk = FUNC2("uart_pll", "pll1_4",
				CLK_SET_RATE_PARENT,
				pxa_unit->mpmu_base + MPMU_UART_PLL,
				&uart_factor_masks, uart_factor_tbl,
				FUNC0(uart_factor_tbl), NULL);
	FUNC1(unit, PXA910_CLK_UART_PLL, clk);
}