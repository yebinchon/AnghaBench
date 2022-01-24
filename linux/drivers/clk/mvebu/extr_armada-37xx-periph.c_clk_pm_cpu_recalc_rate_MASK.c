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
typedef  int /*<<< orphan*/  u64 ;
struct clk_pm_cpu {int /*<<< orphan*/  shift_div; int /*<<< orphan*/  reg_div; int /*<<< orphan*/  nb_pm_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_pm_cpu* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
					    unsigned long parent_rate)
{
	struct clk_pm_cpu *pm_cpu = FUNC4(hw);
	unsigned int div;

	if (FUNC2(pm_cpu->nb_pm_base))
		div = FUNC1(pm_cpu->nb_pm_base);
	else
		div = FUNC3(pm_cpu->reg_div, pm_cpu->shift_div);
	return FUNC0((u64)parent_rate, div);
}