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
struct clk_rpmh {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_rpmh*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpmh_clk_lock ; 
 struct clk_rpmh* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct clk_rpmh *c = FUNC3(hw);

	FUNC1(&rpmh_clk_lock);
	FUNC0(c, false);
	FUNC2(&rpmh_clk_lock);
}