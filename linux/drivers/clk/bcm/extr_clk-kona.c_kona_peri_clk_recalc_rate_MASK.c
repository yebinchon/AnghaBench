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
struct peri_clk_data {int /*<<< orphan*/  pre_div; int /*<<< orphan*/  div; } ;
struct TYPE_2__ {struct peri_clk_data* peri; } ;
struct kona_clk {int /*<<< orphan*/  ccu; TYPE_1__ u; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 struct kona_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
			unsigned long parent_rate)
{
	struct kona_clk *bcm_clk = FUNC1(hw);
	struct peri_clk_data *data = bcm_clk->u.peri;

	return FUNC0(bcm_clk->ccu, &data->div, &data->pre_div,
				parent_rate);
}