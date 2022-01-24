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
typedef  int u32 ;
struct tegra_sdmmc_mux {scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  div_flags; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 size_t MUX_SHIFT ; 
 size_t FUNC0 (struct clk_hw*) ; 
 int FUNC1 (unsigned long,unsigned long,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t* mux_lj_idx ; 
 size_t* mux_non_lj_idx ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 struct tegra_sdmmc_mux* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
				  unsigned long parent_rate)
{
	struct tegra_sdmmc_mux *sdmmc_mux = FUNC5(hw);
	int div;
	unsigned long flags = 0;
	u32 val;
	u8 src;

	div = FUNC1(rate, parent_rate, 8, 1, sdmmc_mux->div_flags);
	if (div < 0)
		return div;

	if (sdmmc_mux->lock)
		FUNC3(sdmmc_mux->lock, flags);

	src = FUNC0(hw);
	if (div)
		src = mux_non_lj_idx[src];
	else
		src = mux_lj_idx[src];

	val = src << MUX_SHIFT;
	val |= div;
	FUNC6(val, sdmmc_mux->reg);
	FUNC2(2, sdmmc_mux->reg);

	if (sdmmc_mux->lock)
		FUNC4(sdmmc_mux->lock, flags);

	return 0;
}