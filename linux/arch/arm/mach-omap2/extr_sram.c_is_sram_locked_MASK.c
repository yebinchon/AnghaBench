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
 int /*<<< orphan*/  OMAP24XX_VA_READPERM0 ; 
 int /*<<< orphan*/  OMAP24XX_VA_REQINFOPERM0 ; 
 int /*<<< orphan*/  OMAP24XX_VA_WRITEPERM0 ; 
 scalar_t__ OMAP2_DEVICE_TYPE_GP ; 
 int /*<<< orphan*/  OMAP34XX_VA_ADDR_MATCH2 ; 
 int /*<<< orphan*/  OMAP34XX_VA_READPERM0 ; 
 int /*<<< orphan*/  OMAP34XX_VA_REQINFOPERM0 ; 
 int /*<<< orphan*/  OMAP34XX_VA_SMS_RG_ATT0 ; 
 int /*<<< orphan*/  OMAP34XX_VA_WRITEPERM0 ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	if (OMAP2_DEVICE_TYPE_GP == FUNC2()) {
		/* RAMFW: R/W access to all initiators for all qualifier sets */
		if (FUNC0()) {
			FUNC3(0xFF, OMAP24XX_VA_REQINFOPERM0); /* all q-vects */
			FUNC3(0xCFDE, OMAP24XX_VA_READPERM0);  /* all i-read */
			FUNC3(0xCFDE, OMAP24XX_VA_WRITEPERM0); /* all i-write */
		}
		if (FUNC1()) {
			FUNC3(0xFFFF, OMAP34XX_VA_REQINFOPERM0); /* all q-vects */
			FUNC3(0xFFFF, OMAP34XX_VA_READPERM0);  /* all i-read */
			FUNC3(0xFFFF, OMAP34XX_VA_WRITEPERM0); /* all i-write */
			FUNC3(0x0, OMAP34XX_VA_ADDR_MATCH2);
			FUNC3(0xFFFFFFFF, OMAP34XX_VA_SMS_RG_ATT0);
		}
		return 0;
	} else
		return 1; /* assume locked with no PPA or security driver */
}