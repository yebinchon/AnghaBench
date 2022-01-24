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
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, bool force_on)
{
	if (!clk)
		return 0;

	if (force_on)
		return FUNC1(clk);
	else
		return FUNC0(clk);
}