#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* peri; } ;
struct kona_clk {TYPE_2__ u; int /*<<< orphan*/  ccu; } ;
struct clk_hw {int dummy; } ;
struct bcm_clk_div {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pre_div; struct bcm_clk_div div; } ;

/* Variables and functions */
 long FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_clk_div*) ; 
 long FUNC2 (int /*<<< orphan*/ ,struct bcm_clk_div*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 struct kona_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw, unsigned long rate,
			unsigned long *parent_rate)
{
	struct kona_clk *bcm_clk = FUNC3(hw);
	struct bcm_clk_div *div = &bcm_clk->u.peri->div;

	if (!FUNC1(div))
		return FUNC0(hw);

	/* Quietly avoid a zero rate */
	return FUNC2(bcm_clk->ccu, div, &bcm_clk->u.peri->pre_div,
				rate ? rate : 1, *parent_rate, NULL);
}