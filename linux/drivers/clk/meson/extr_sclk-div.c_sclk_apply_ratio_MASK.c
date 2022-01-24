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
struct TYPE_2__ {int num; int /*<<< orphan*/  den; } ;
struct meson_sclk_div_data {int cached_div; int /*<<< orphan*/  hi; TYPE_1__ cached_duty; } ;
struct clk_regmap {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct clk_regmap *clk,
			     struct meson_sclk_div_data *sclk)
{
	unsigned int hi = FUNC0(sclk->cached_div *
					    sclk->cached_duty.num,
					    sclk->cached_duty.den);

	if (hi)
		hi -= 1;

	FUNC1(clk->map, &sclk->hi, hi);
}