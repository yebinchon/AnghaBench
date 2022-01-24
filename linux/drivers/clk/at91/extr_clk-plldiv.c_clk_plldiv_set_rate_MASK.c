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
struct clk_plldiv {int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_MCKR ; 
 int /*<<< orphan*/  AT91_PMC_PLLADIV2 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_plldiv* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, unsigned long rate,
			       unsigned long parent_rate)
{
	struct clk_plldiv *plldiv = FUNC1(hw);

	if ((parent_rate != rate) && (parent_rate / 2 != rate))
		return -EINVAL;

	FUNC0(plldiv->regmap, AT91_PMC_MCKR, AT91_PMC_PLLADIV2,
			   parent_rate != rate ? AT91_PMC_PLLADIV2 : 0);

	return 0;
}