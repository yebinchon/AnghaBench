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
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,int*,int*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw,
						unsigned long rate,
						unsigned long *prate)
{
	int prediv_value;
	int div_value;

	FUNC1(rate, *prate,
						&prediv_value, &div_value);
	rate = FUNC0(*prate, prediv_value);

	return FUNC0(rate, div_value);

}