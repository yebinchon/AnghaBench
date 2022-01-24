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
typedef  int /*<<< orphan*/  u32 ;
struct st_clk_quadfs_pll {TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ powerup_polarity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_clk_quadfs_pll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  npda ; 
 struct st_clk_quadfs_pll* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct st_clk_quadfs_pll *pll = FUNC1(hw);
	u32 npda = FUNC0(pll, npda);

	return pll->data->powerup_polarity ? !npda : !!npda;
}