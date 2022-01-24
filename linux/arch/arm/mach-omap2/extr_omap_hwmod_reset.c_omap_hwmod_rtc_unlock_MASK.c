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
struct omap_hwmod {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_KICK0_REG ; 
 int /*<<< orphan*/  OMAP_RTC_KICK0_VALUE ; 
 int /*<<< orphan*/  OMAP_RTC_KICK1_REG ; 
 int /*<<< orphan*/  OMAP_RTC_KICK1_VALUE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct omap_hwmod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hwmod*) ; 

void FUNC4(struct omap_hwmod *oh)
{
	unsigned long flags;

	FUNC1(flags);
	FUNC3(oh);
	FUNC2(OMAP_RTC_KICK0_VALUE, oh, OMAP_RTC_KICK0_REG);
	FUNC2(OMAP_RTC_KICK1_VALUE, oh, OMAP_RTC_KICK1_REG);
	FUNC0(flags);
}