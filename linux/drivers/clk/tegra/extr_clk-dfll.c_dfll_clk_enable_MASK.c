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
struct tegra_dfll {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct tegra_dfll* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dfll*) ; 
 int FUNC2 (struct tegra_dfll*) ; 
 int FUNC3 (struct tegra_dfll*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct tegra_dfll *td = FUNC0(hw);
	int ret;

	ret = FUNC2(td);
	if (ret)
		return ret;

	ret = FUNC3(td);
	if (ret)
		FUNC1(td);

	return ret;
}