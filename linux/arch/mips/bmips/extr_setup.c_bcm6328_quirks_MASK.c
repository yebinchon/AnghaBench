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

/* Variables and functions */
 int BCM6328_TP1_DISABLED ; 
 int /*<<< orphan*/  REG_BCM6328_OTP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ bmips_smp_enabled ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Check CPU1 status in OTP (it is usually disabled) */
	if (FUNC0(REG_BCM6328_OTP) & BCM6328_TP1_DISABLED)
		bmips_smp_enabled = 0;
	else
		FUNC1();
}