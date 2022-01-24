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
typedef  int /*<<< orphan*/  u8 ;
struct sprd_comp {int /*<<< orphan*/  mux; int /*<<< orphan*/  common; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct sprd_comp* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 index)
{
	struct sprd_comp *cc = FUNC0(hw);

	return FUNC1(&cc->common, &cc->mux, index);
}