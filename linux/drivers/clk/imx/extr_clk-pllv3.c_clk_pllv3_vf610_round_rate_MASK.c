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
struct clk_pllv3_vf610_mf {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long FUNC0 (unsigned long,struct clk_pllv3_vf610_mf) ; 
 struct clk_pllv3_vf610_mf FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
				    unsigned long *prate)
{
	struct clk_pllv3_vf610_mf mf = FUNC1(*prate, rate);

	return FUNC0(*prate, mf);
}