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
 int FUNC1 (int,int) ; 
 scalar_t__ LVL2_CLK_GATE_OVRE ; 
 scalar_t__ NV_PVIC_THI_SLCG_OVERRIDE_LOW ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ vic_base ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct tegra210_domain_mbist_war *mbist)
{
	u32 ovre, val;

	ovre = FUNC4(clk_base + LVL2_CLK_GATE_OVRE);
	FUNC5(ovre | FUNC0(5), clk_base + LVL2_CLK_GATE_OVRE);
	FUNC2(1, clk_base);

	val = FUNC4(vic_base + NV_PVIC_THI_SLCG_OVERRIDE_LOW);
	FUNC5(val | FUNC0(0) | FUNC1(7, 2) | FUNC0(24),
			vic_base + NV_PVIC_THI_SLCG_OVERRIDE_LOW);
	FUNC2(1, vic_base + NV_PVIC_THI_SLCG_OVERRIDE_LOW);

	FUNC5(val, vic_base + NV_PVIC_THI_SLCG_OVERRIDE_LOW);
	FUNC3(vic_base + NV_PVIC_THI_SLCG_OVERRIDE_LOW);

	FUNC5(ovre, clk_base + LVL2_CLK_GATE_OVRE);
	FUNC2(1, clk_base);
}