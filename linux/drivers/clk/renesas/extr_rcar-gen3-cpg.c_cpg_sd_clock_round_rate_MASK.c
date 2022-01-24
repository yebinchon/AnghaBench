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
struct sd_clock {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (unsigned long,unsigned int) ; 
 unsigned int FUNC1 (struct sd_clock*,unsigned long,unsigned long) ; 
 struct sd_clock* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
				      unsigned long *parent_rate)
{
	struct sd_clock *clock = FUNC2(hw);
	unsigned int div = FUNC1(clock, rate, *parent_rate);

	return FUNC0(*parent_rate, div);
}