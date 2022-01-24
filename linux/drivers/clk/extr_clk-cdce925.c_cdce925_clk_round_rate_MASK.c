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
typedef  unsigned long u16 ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (struct clk_hw*,unsigned long) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
		unsigned long *parent_rate)
{
	unsigned long l_parent_rate = *parent_rate;
	u16 divider = FUNC0(rate, l_parent_rate);

	if (l_parent_rate / divider != rate) {
		l_parent_rate = FUNC1(hw, rate);
		divider = FUNC0(rate, l_parent_rate);
		*parent_rate = l_parent_rate;
	}

	if (divider)
		return (long)(l_parent_rate / divider);
	return 0;
}