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
struct clk_hw {int dummy; } ;
struct clk_corediv_soc_desc {int enable_bit_offset; } ;
struct clk_corediv_desc {int /*<<< orphan*/  fieldbit; } ;
struct clk_corediv {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; struct clk_corediv_desc* desc; struct clk_corediv_soc_desc* soc_desc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_corediv* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hwclk)
{
	struct clk_corediv *corediv = FUNC4(hwclk);
	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
	const struct clk_corediv_desc *desc = corediv->desc;
	unsigned long flags = 0;
	u32 reg;

	FUNC2(&corediv->lock, flags);

	reg = FUNC1(corediv->reg);
	reg |= (FUNC0(desc->fieldbit) << soc_desc->enable_bit_offset);
	FUNC5(reg, corediv->reg);

	FUNC3(&corediv->lock, flags);

	return 0;
}