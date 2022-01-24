#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mmp_clk_unit {int dummy; } ;
struct mmp2_clk_unit {scalar_t__ apmu_base; struct mmp_clk_unit unit; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {scalar_t__ reg_clk_ctrl; } ;
struct TYPE_7__ {TYPE_1__ reg_info; } ;

/* Variables and functions */
 scalar_t__ APMU_CCIC0 ; 
 scalar_t__ APMU_CCIC1 ; 
 scalar_t__ APMU_SDH0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int /*<<< orphan*/  MMP2_CLK_CCIC0_MIX ; 
 int /*<<< orphan*/  MMP2_CLK_CCIC1_MIX ; 
 int /*<<< orphan*/  apmu_div_clks ; 
 int /*<<< orphan*/  apmu_gate_clks ; 
 int /*<<< orphan*/  apmu_mux_clks ; 
 int /*<<< orphan*/  ccic0_lock ; 
 TYPE_2__ ccic0_mix_config ; 
 int /*<<< orphan*/  ccic1_lock ; 
 TYPE_2__ ccic1_mix_config ; 
 int /*<<< orphan*/  ccic_parent_names ; 
 int /*<<< orphan*/  FUNC1 (struct mmp_clk_unit*,int /*<<< orphan*/ ,struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmp_clk_unit*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmp_clk_unit*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmp_clk_unit*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdh_lock ; 
 TYPE_2__ sdh_mix_config ; 
 int /*<<< orphan*/  sdh_parent_names ; 

__attribute__((used)) static void FUNC6(struct mmp2_clk_unit *pxa_unit)
{
	struct clk *clk;
	struct mmp_clk_unit *unit = &pxa_unit->unit;

	sdh_mix_config.reg_info.reg_clk_ctrl = pxa_unit->apmu_base + APMU_SDH0;
	clk = FUNC2(NULL, "sdh_mix_clk", sdh_parent_names,
					FUNC0(sdh_parent_names),
					CLK_SET_RATE_PARENT,
					&sdh_mix_config, &sdh_lock);

	ccic0_mix_config.reg_info.reg_clk_ctrl = pxa_unit->apmu_base + APMU_CCIC0;
	clk = FUNC2(NULL, "ccic0_mix_clk", ccic_parent_names,
					FUNC0(ccic_parent_names),
					CLK_SET_RATE_PARENT,
					&ccic0_mix_config, &ccic0_lock);
	FUNC1(unit, MMP2_CLK_CCIC0_MIX, clk);

	ccic1_mix_config.reg_info.reg_clk_ctrl = pxa_unit->apmu_base + APMU_CCIC1;
	clk = FUNC2(NULL, "ccic1_mix_clk", ccic_parent_names,
					FUNC0(ccic_parent_names),
					CLK_SET_RATE_PARENT,
					&ccic1_mix_config, &ccic1_lock);
	FUNC1(unit, MMP2_CLK_CCIC1_MIX, clk);

	FUNC5(unit, apmu_mux_clks, pxa_unit->apmu_base,
				FUNC0(apmu_mux_clks));

	FUNC3(unit, apmu_div_clks, pxa_unit->apmu_base,
				FUNC0(apmu_div_clks));

	FUNC4(unit, apmu_gate_clks, pxa_unit->apmu_base,
				FUNC0(apmu_gate_clks));
}