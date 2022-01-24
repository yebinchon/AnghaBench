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
typedef  int /*<<< orphan*/  u8 ;
struct regmap {int dummy; } ;
struct lochnagar_clk_priv {int /*<<< orphan*/  dev; struct regmap* regmap; } ;
struct lochnagar_clk {int /*<<< orphan*/  name; int /*<<< orphan*/  src_mask; int /*<<< orphan*/  src_reg; struct lochnagar_clk_priv* priv; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct lochnagar_clk* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, u8 index)
{
	struct lochnagar_clk *lclk = FUNC1(hw);
	struct lochnagar_clk_priv *priv = lclk->priv;
	struct regmap *regmap = priv->regmap;
	int ret;

	ret = FUNC2(regmap, lclk->src_reg, lclk->src_mask, index);
	if (ret < 0)
		FUNC0(priv->dev, "Failed to reparent %s: %d\n",
			lclk->name, ret);

	return ret;
}