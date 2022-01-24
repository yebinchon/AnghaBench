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
typedef  scalar_t__ u8 ;
struct peri_clk_data {int /*<<< orphan*/  sel; } ;
struct TYPE_2__ {struct peri_clk_data* peri; } ;
struct kona_clk {int /*<<< orphan*/  ccu; TYPE_1__ u; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAD_CLK_INDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kona_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC2(struct clk_hw *hw)
{
	struct kona_clk *bcm_clk = FUNC1(hw);
	struct peri_clk_data *data = bcm_clk->u.peri;
	u8 index;

	index = FUNC0(bcm_clk->ccu, &data->sel);

	/* Not all callers would handle an out-of-range value gracefully */
	return index == BAD_CLK_INDEX ? 0 : index;
}