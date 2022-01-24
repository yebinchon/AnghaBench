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

/* Variables and functions */
 long FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
				  unsigned long *parent_rate)
{
	*parent_rate = FUNC2(FUNC1(hw), rate * 2);
	return FUNC0(*parent_rate, 2);
}