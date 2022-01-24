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
struct st_clk_quadfs_pll {int ndiv; TYPE_1__* data; scalar_t__ lock; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ lockstatus_present; int /*<<< orphan*/  powerup_polarity; scalar_t__ bwfilter_present; scalar_t__ reset_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_clk_quadfs_pll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_clk_quadfs_pll*,int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 int PLL_BW_GOODREF ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  lock_status ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  ndiv ; 
 int /*<<< orphan*/  npda ; 
 int /*<<< orphan*/  nreset ; 
 int /*<<< orphan*/  ref_bw ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 struct st_clk_quadfs_pll* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct st_clk_quadfs_pll *pll = FUNC7(hw);
	unsigned long flags = 0, timeout = jiffies + FUNC3(10);

	if (pll->lock)
		FUNC4(pll->lock, flags);

	/*
	 * Bring block out of reset if we have reset control.
	 */
	if (pll->data->reset_present)
		FUNC1(pll, nreset, 1);

	/*
	 * Use a fixed input clock noise bandwidth filter for the moment
	 */
	if (pll->data->bwfilter_present)
		FUNC1(pll, ref_bw, PLL_BW_GOODREF);


	FUNC1(pll, ndiv, pll->ndiv);

	/*
	 * Power up the PLL
	 */
	FUNC1(pll, npda, !pll->data->powerup_polarity);

	if (pll->lock)
		FUNC5(pll->lock, flags);

	if (pll->data->lockstatus_present)
		while (!FUNC0(pll, lock_status)) {
			if (FUNC6(jiffies, timeout))
				return -ETIMEDOUT;
			FUNC2();
		}

	return 0;
}