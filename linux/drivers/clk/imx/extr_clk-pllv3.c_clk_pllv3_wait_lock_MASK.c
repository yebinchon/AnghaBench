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
struct clk_pllv3 {int power_bit; int /*<<< orphan*/  base; scalar_t__ powerup_set; } ;

/* Variables and functions */
 int BM_PLL_LOCK ; 
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct clk_pllv3 *pll)
{
	unsigned long timeout = jiffies + FUNC0(10);
	u32 val = FUNC1(pll->base) & pll->power_bit;

	/* No need to wait for lock when pll is not powered up */
	if ((pll->powerup_set && !val) || (!pll->powerup_set && val))
		return 0;

	/* Wait for PLL to lock */
	do {
		if (FUNC1(pll->base) & BM_PLL_LOCK)
			break;
		if (FUNC2(jiffies, timeout))
			break;
		FUNC3(50, 500);
	} while (1);

	return FUNC1(pll->base) & BM_PLL_LOCK ? 0 : -ETIMEDOUT;
}