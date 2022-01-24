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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_MII_REG_MII0_CTRL ; 
 int /*<<< orphan*/  AR913X_ETH0_PLL_SHIFT ; 
 int /*<<< orphan*/  AR913X_PLL_REG_ETH0_INT_CLOCK ; 
 int /*<<< orphan*/  AR913X_PLL_REG_ETH_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int speed)
{
	u32 val = FUNC0(0, speed);

	FUNC2(AR913X_PLL_REG_ETH_CONFIG, AR913X_PLL_REG_ETH0_INT_CLOCK,
			 val, AR913X_ETH0_PLL_SHIFT);
	FUNC1(AR71XX_MII_REG_MII0_CTRL, speed);
}