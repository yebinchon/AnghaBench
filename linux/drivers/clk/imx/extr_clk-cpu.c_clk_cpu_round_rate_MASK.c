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
struct clk_cpu {int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_cpu* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC2(struct clk_hw *hw, unsigned long rate,
			       unsigned long *prate)
{
	struct clk_cpu *cpu = FUNC1(hw);

	return FUNC0(cpu->pll, rate);
}