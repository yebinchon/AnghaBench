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
typedef  int u32 ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS1X_CLK_PLL_FREQ ; 
 int OSC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	u32 pll, rate;

	pll = FUNC1(LS1X_CLK_PLL_FREQ);
	rate = 12 + (pll & FUNC0(5, 0));
	rate *= OSC;
	rate >>= 1;

	return rate;
}