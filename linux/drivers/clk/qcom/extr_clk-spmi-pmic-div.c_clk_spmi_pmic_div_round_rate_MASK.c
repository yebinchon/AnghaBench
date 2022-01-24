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
 unsigned int FUNC0 (unsigned long,unsigned long) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
					 unsigned long *parent_rate)
{
	unsigned int div, div_factor;

	div = FUNC0(*parent_rate, rate);
	div_factor = FUNC2(div);
	div = FUNC1(div_factor);

	return *parent_rate / div;
}