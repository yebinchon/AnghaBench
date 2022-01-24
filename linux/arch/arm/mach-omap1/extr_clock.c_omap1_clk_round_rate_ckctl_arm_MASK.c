#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;

/* Variables and functions */
 int FUNC0 (struct clk*,unsigned long) ; 

long FUNC1(struct clk *clk, unsigned long rate)
{
	int dsor_exp = FUNC0(clk, rate);
	if (dsor_exp < 0)
		return dsor_exp;
	if (dsor_exp > 3)
		dsor_exp = 3;
	return clk->parent->rate / (1 << dsor_exp);
}