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
struct davinci_lpsc_clk {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPSC_STATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_lpsc_clk*,int /*<<< orphan*/ ) ; 
 struct davinci_lpsc_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct davinci_lpsc_clk *lpsc = FUNC1(hw);

	FUNC0(lpsc, LPSC_STATE_DISABLE);
}