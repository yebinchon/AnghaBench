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
typedef  unsigned int u32 ;
struct sprd_clk_common {int reg; int /*<<< orphan*/  regmap; } ;
struct sprd_pll {int regs_num; struct sprd_clk_common common; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static inline void
FUNC3(const struct sprd_pll *pll, u8 index,
				  u32 msk, u32 val)
{
	const struct sprd_clk_common *common = &pll->common;
	unsigned int offset, reg;
	int ret = 0;

	if (FUNC0(index >= pll->regs_num))
		return;

	offset = common->reg + index * 4;
	ret = FUNC1(common->regmap, offset, &reg);
	if (!ret)
		FUNC2(common->regmap, offset, (reg & ~msk) | val);
}