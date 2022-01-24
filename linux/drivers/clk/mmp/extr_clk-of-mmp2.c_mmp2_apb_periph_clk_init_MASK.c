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
struct mmp2_clk_unit {int /*<<< orphan*/  apbc_base; struct mmp_clk_unit unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apbc_gate_clks ; 
 int /*<<< orphan*/  apbc_mux_clks ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmp_clk_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mmp2_clk_unit *pxa_unit)
{
	struct mmp_clk_unit *unit = &pxa_unit->unit;

	FUNC2(unit, apbc_mux_clks, pxa_unit->apbc_base,
				FUNC0(apbc_mux_clks));

	FUNC1(unit, apbc_gate_clks, pxa_unit->apbc_base,
				FUNC0(apbc_gate_clks));
}