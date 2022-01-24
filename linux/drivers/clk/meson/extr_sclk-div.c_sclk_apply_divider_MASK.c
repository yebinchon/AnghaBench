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
struct meson_sclk_div_data {scalar_t__ cached_div; int /*<<< orphan*/  div; int /*<<< orphan*/  hi; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_regmap*,struct meson_sclk_div_data*) ; 

__attribute__((used)) static void FUNC3(struct clk_regmap *clk,
			       struct meson_sclk_div_data *sclk)
{
	if (FUNC0(&sclk->hi))
		FUNC2(clk, sclk);

	FUNC1(clk->map, &sclk->div, sclk->cached_div - 1);
}