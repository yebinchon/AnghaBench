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
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_FREQ_SELECT ; 
 unsigned char RTC_UIP ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline unsigned char FUNC3(void)
{
	unsigned long flags;
	unsigned char uip;

	FUNC1(&rtc_lock, flags);
	uip = (FUNC0(RTC_FREQ_SELECT) & RTC_UIP);
	FUNC2(&rtc_lock, flags);
	return uip;
}