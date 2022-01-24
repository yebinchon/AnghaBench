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
 int CLK_SET_RATE_PARENT ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				   unsigned long *prate)
{
	unsigned long div;

	/* Round div according to exact prate and wished rate */
	div = FUNC0(*prate, rate);

	if (FUNC1(hw) & CLK_SET_RATE_PARENT) {
		*prate = rate * div;
		return rate;
	}

	return *prate / div;
}