#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ingenic_tcu_clk_info {int /*<<< orphan*/  tcsr_reg; } ;
struct ingenic_tcu_clk {int /*<<< orphan*/  idx; TYPE_1__* tcu; struct ingenic_tcu_clk_info* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 unsigned int TCU_TCSR_PRESCALE_LSB ; 
 unsigned int TCU_TCSR_PRESCALE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct ingenic_tcu_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct ingenic_tcu_clk *tcu_clk = FUNC2(hw);
	const struct ingenic_tcu_clk_info *info = tcu_clk->info;
	unsigned int prescale;
	int ret;

	ret = FUNC1(tcu_clk->tcu->map, info->tcsr_reg, &prescale);
	FUNC0(ret < 0, "Unable to read TCSR %d", tcu_clk->idx);

	prescale = (prescale & TCU_TCSR_PRESCALE_MASK) >> TCU_TCSR_PRESCALE_LSB;

	return parent_rate >> (prescale * 2);
}