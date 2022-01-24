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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct tegra_sdmmc_mux {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int SDMMC_MUL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tegra_sdmmc_mux* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					       unsigned long parent_rate)
{
	struct tegra_sdmmc_mux *sdmmc_mux = FUNC3(hw);
	u32 val;
	int div;
	u64 rate = parent_rate;

	val = FUNC2(sdmmc_mux->reg);
	div = FUNC1(val);

	div += SDMMC_MUL;

	rate *= SDMMC_MUL;
	rate += div - 1;
	FUNC0(rate, div);

	return rate;
}