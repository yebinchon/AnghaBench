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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct tegra_sdmmc_mux {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 size_t MUX_MASK ; 
 size_t MUX_SHIFT ; 
 scalar_t__ FUNC0 (size_t) ; 
 size_t* mux_lj_idx ; 
 size_t* mux_non_lj_idx ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_sdmmc_mux* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct tegra_sdmmc_mux *sdmmc_mux = FUNC2(hw);
	u32 val;


	val = FUNC1(sdmmc_mux->reg);
	if (FUNC0(val))
		index = mux_non_lj_idx[index];
	else
		index = mux_lj_idx[index];

	val &= ~MUX_MASK;
	val |= index << MUX_SHIFT;

	FUNC3(val, sdmmc_mux->reg);

	return 0;
}