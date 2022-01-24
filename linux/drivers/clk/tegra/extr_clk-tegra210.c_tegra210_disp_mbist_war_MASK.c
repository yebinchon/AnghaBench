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
typedef  int u32 ;
struct tegra210_domain_mbist_war {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ DC_CMD_DISPLAY_COMMAND ; 
 scalar_t__ DC_COM_DSC_TOP_CTL ; 
 scalar_t__ LVL2_CLK_GATE_OVRA ; 
 scalar_t__ clk_base ; 
 scalar_t__ dispa_base ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tegra210_domain_mbist_war *mbist)
{
	u32 ovra, dsc_top_ctrl;

	ovra = FUNC2(clk_base + LVL2_CLK_GATE_OVRA);
	FUNC3(ovra | FUNC0(1), clk_base + LVL2_CLK_GATE_OVRA);
	FUNC1(1, clk_base);

	dsc_top_ctrl = FUNC2(dispa_base + DC_COM_DSC_TOP_CTL);
	FUNC3(dsc_top_ctrl | FUNC0(2), dispa_base + DC_COM_DSC_TOP_CTL);
	FUNC2(dispa_base + DC_CMD_DISPLAY_COMMAND);
	FUNC3(dsc_top_ctrl, dispa_base + DC_COM_DSC_TOP_CTL);
	FUNC2(dispa_base + DC_CMD_DISPLAY_COMMAND);

	FUNC3(ovra, clk_base + LVL2_CLK_GATE_OVRA);
	FUNC1(1, clk_base);
}