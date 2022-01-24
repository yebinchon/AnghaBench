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
 int FUNC0 (long*) ; 
 scalar_t__ FUNC1 (long) ; 
 long* wm831x_fll_auto_rates ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				  unsigned long *unused)
{
	int best = 0;
	int i;

	for (i = 0; i < FUNC0(wm831x_fll_auto_rates); i++)
		if (FUNC1(wm831x_fll_auto_rates[i] - rate) <
		    FUNC1(wm831x_fll_auto_rates[best] - rate))
			best = i;

	return wm831x_fll_auto_rates[best];
}