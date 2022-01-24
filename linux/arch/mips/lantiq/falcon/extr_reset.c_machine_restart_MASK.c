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
 int BOOT_PW1 ; 
 scalar_t__ BOOT_PW1_REG ; 
 int BOOT_PW2 ; 
 scalar_t__ BOOT_PW2_REG ; 
 scalar_t__ BOOT_REG_BASE ; 
 int WDT_PW1 ; 
 int WDT_PW2 ; 
 scalar_t__ WDT_REG_BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(char *command)
{
	FUNC0();

	/* reboot magic */
	FUNC1(BOOT_PW1, (void *)BOOT_PW1_REG); /* 'LTQ\0' */
	FUNC1(BOOT_PW2, (void *)BOOT_PW2_REG); /* '\0QTL' */
	FUNC1(0, (void *)BOOT_REG_BASE); /* reset Bootreg RVEC */

	/* watchdog magic */
	FUNC1(WDT_PW1, (void *)WDT_REG_BASE);
	FUNC1(WDT_PW2 |
		(0x3 << 26) | /* PWL */
		(0x2 << 24) | /* CLKDIV */
		(0x1 << 31) | /* enable */
		(1), /* reload */
		(void *)WDT_REG_BASE);
	FUNC2();
}