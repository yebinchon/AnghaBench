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
struct kona_clk {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kona_clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct kona_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct kona_clk *bcm_clk;

	if (!hw)
		return;

	FUNC1(hw);

	bcm_clk = FUNC2(hw);
	FUNC0(bcm_clk);
}