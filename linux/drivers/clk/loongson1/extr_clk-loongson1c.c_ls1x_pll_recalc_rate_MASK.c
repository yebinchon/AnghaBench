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
 int /*<<< orphan*/  LS1X_CLK_PLL_FREQ ; 
 int OSC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	u32 pll, rate;

	pll = FUNC0(LS1X_CLK_PLL_FREQ);
	rate = ((pll >> 8) & 0xff) + ((pll >> 16) & 0xff);
	rate *= OSC;
	rate >>= 2;

	return rate;
}