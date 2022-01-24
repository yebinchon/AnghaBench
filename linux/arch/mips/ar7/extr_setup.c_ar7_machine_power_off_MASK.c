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

/* Variables and functions */
 int /*<<< orphan*/  AR7_REGS_POWER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 *power_reg = (u32 *)FUNC1(AR7_REGS_POWER, 1);
	u32 power_state = FUNC2(power_reg) | (3 << 30);

	FUNC3(power_state, power_reg);
	FUNC0();
}