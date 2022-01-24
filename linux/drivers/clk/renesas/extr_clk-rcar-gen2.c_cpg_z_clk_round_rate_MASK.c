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
typedef  int u64 ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (int,unsigned long) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				 unsigned long *parent_rate)
{
	unsigned long prate  = *parent_rate;
	unsigned int mult;

	if (!prate)
		prate = 1;

	mult = FUNC1((u64)rate * 32, prate);
	mult = FUNC0(mult, 1U, 32U);

	return *parent_rate / 32 * mult;
}