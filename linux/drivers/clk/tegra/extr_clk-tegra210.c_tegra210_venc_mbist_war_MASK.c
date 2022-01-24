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
 scalar_t__ LVL2_CLK_GATE_OVRA ; 
 scalar_t__ LVL2_CLK_GATE_OVRE ; 
 scalar_t__ PLLD_BASE ; 
 int PLLD_BASE_CSI_CLKSOURCE ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  pll_d_lock ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct tegra210_domain_mbist_war *mbist)
{
	u32 csi_src, ovra, ovre;
	unsigned long flags = 0;

	FUNC3(&pll_d_lock, flags);

	csi_src = FUNC2(clk_base + PLLD_BASE);
	FUNC5(csi_src | PLLD_BASE_CSI_CLKSOURCE, clk_base + PLLD_BASE);
	FUNC1(1, clk_base);

	ovra = FUNC2(clk_base + LVL2_CLK_GATE_OVRA);
	FUNC5(ovra | FUNC0(15), clk_base + LVL2_CLK_GATE_OVRA);
	ovre = FUNC2(clk_base + LVL2_CLK_GATE_OVRE);
	FUNC5(ovre | FUNC0(3), clk_base + LVL2_CLK_GATE_OVRE);
	FUNC1(1, clk_base);

	FUNC5(ovra, clk_base + LVL2_CLK_GATE_OVRA);
	FUNC5(ovre, clk_base + LVL2_CLK_GATE_OVRE);
	FUNC5(csi_src, clk_base + PLLD_BASE);
	FUNC1(1, clk_base);

	FUNC4(&pll_d_lock, flags);
}