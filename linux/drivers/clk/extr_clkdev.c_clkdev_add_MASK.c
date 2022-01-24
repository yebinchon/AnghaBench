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
struct clk_lookup {int /*<<< orphan*/  clk; scalar_t__ clk_hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_lookup*) ; 

void FUNC2(struct clk_lookup *cl)
{
	if (!cl->clk_hw)
		cl->clk_hw = FUNC0(cl->clk);
	FUNC1(cl);
}