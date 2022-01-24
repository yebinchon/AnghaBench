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
struct hsdk_pll_clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGU_PLL_STATUS ; 
 int CGU_PLL_STATUS_ERR ; 
 int FUNC0 (struct hsdk_pll_clk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct hsdk_pll_clk *clk)
{
	return !!(FUNC0(clk, CGU_PLL_STATUS) & CGU_PLL_STATUS_ERR);
}