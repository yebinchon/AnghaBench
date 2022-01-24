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
 long FUNC0 (struct clk_hw*,unsigned long,unsigned long*,int*) ; 

__attribute__((used)) static long FUNC1(struct clk_hw *hw, unsigned long drate,
				unsigned long *prate)
{
	int unused;

	return FUNC0(hw, drate, prate, &unused);
}