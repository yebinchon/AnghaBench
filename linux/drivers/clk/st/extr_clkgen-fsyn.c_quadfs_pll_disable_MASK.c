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
struct st_clk_quadfs_pll {scalar_t__ lock; TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ reset_present; int /*<<< orphan*/  powerup_polarity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_clk_quadfs_pll*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  npda ; 
 int /*<<< orphan*/  nreset ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct st_clk_quadfs_pll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct st_clk_quadfs_pll *pll = FUNC3(hw);
	unsigned long flags = 0;

	if (pll->lock)
		FUNC1(pll->lock, flags);

	/*
	 * Powerdown the PLL and then put block into soft reset if we have
	 * reset control.
	 */
	FUNC0(pll, npda, pll->data->powerup_polarity);

	if (pll->data->reset_present)
		FUNC0(pll, nreset, 0);

	if (pll->lock)
		FUNC2(pll->lock, flags);
}