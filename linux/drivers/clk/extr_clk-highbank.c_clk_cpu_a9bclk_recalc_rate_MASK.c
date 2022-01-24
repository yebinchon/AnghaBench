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
struct hb_clk {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int HB_A9_BCLK_DIV_MASK ; 
 int HB_A9_BCLK_DIV_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct hb_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hwclk,
						unsigned long parent_rate)
{
	struct hb_clk *hbclk = FUNC1(hwclk);
	u32 div = (FUNC0(hbclk->reg) & HB_A9_BCLK_DIV_MASK) >> HB_A9_BCLK_DIV_SHIFT;

	return parent_rate / (div + 2);
}