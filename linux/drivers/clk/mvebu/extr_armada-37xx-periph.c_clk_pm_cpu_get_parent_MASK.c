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
typedef  int u8 ;
typedef  int u32 ;
struct clk_pm_cpu {int shift_mux; int mask_mux; int /*<<< orphan*/  reg_mux; int /*<<< orphan*/  nb_pm_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct clk_pm_cpu* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC4(struct clk_hw *hw)
{
	struct clk_pm_cpu *pm_cpu = FUNC3(hw);
	u32 val;

	if (FUNC1(pm_cpu->nb_pm_base)) {
		val = FUNC0(pm_cpu->nb_pm_base);
	} else {
		val = FUNC2(pm_cpu->reg_mux) >> pm_cpu->shift_mux;
		val &= pm_cpu->mask_mux;
	}

	return val;
}