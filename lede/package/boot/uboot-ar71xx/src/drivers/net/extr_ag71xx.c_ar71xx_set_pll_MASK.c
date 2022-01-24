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
typedef  int uint32_t ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_PLL_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(u32 cfg_reg, u32 pll_reg, u32 pll_val, u32 shift)
{
	uint32_t base = FUNC0(AR71XX_PLL_BASE);
	u32 t;

	t = FUNC2(base + cfg_reg);
	t &= ~(3 << shift);
	t |=  (2 << shift);
	FUNC4(t, base + cfg_reg);
	FUNC3(100);

	FUNC4(pll_val, base + pll_reg);

	t |= (3 << shift);
	FUNC4(t, base + cfg_reg);
	FUNC3(100);

	t &= ~(3 << shift);
	FUNC4(t, base + cfg_reg);
	FUNC3(100);

	FUNC1("ar71xx: pll_reg %#x: %#x\n", (unsigned int)(base + pll_reg),
       FUNC2(base + pll_reg));
}