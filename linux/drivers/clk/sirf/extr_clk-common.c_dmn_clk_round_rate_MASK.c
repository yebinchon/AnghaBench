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
 unsigned int FUNC0 (unsigned int) ; 
 char* FUNC1 (struct clk_hw*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
	unsigned long *parent_rate)
{
	unsigned long fin;
	unsigned ratio, wait, hold;
	const char *name = FUNC1(hw);
	unsigned bits = (FUNC2(name, "mem") == 0) ? 3 : 4;

	fin = *parent_rate;
	ratio = fin / rate;

	if (ratio < 2)
		ratio = 2;
	if (ratio > FUNC0(bits + 1))
		ratio = FUNC0(bits + 1);

	wait = (ratio >> 1) - 1;
	hold = ratio - wait - 2;

	return fin / (wait + hold + 2);
}