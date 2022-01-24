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
struct regmap {int dummy; } ;
struct pll_config {int dummy; } ;
struct clk_pll {int /*<<< orphan*/  mode_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_pll*,struct regmap*,struct pll_config const*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct clk_pll *pll, struct regmap *regmap,
		const struct pll_config *config, bool fsm_mode)
{
	FUNC0(pll, regmap, config);
	if (fsm_mode)
		FUNC1(regmap, pll->mode_reg, 1, 0);
}