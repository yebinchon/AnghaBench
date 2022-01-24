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
struct pxa168_clk_unit {int /*<<< orphan*/  apmu_base; struct mmp_clk_unit unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apmu_div_clks ; 
 int /*<<< orphan*/  apmu_gate_clks ; 
 int /*<<< orphan*/  apmu_mux_clks ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pxa168_clk_unit *pxa_unit)
{
	struct mmp_clk_unit *unit = &pxa_unit->unit;

	FUNC3(unit, apmu_mux_clks, pxa_unit->apmu_base,
				FUNC0(apmu_mux_clks));

	FUNC1(unit, apmu_div_clks, pxa_unit->apmu_base,
				FUNC0(apmu_div_clks));

	FUNC2(unit, apmu_gate_clks, pxa_unit->apmu_base,
				FUNC0(apmu_gate_clks));
}