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
struct clk {int (* enable ) (struct clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct clk *clk)
{
	if (FUNC2(!FUNC0(clk)))
		return -1;

	if (clk->enable)
		return clk->enable(clk);

	return -1;
}