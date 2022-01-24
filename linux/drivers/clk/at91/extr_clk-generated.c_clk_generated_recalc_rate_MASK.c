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
struct clk_hw {int dummy; } ;
struct clk_generated {scalar_t__ gckdiv; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,scalar_t__) ; 
 struct clk_generated* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC2(struct clk_hw *hw,
			  unsigned long parent_rate)
{
	struct clk_generated *gck = FUNC1(hw);

	return FUNC0(parent_rate, gck->gckdiv + 1);
}