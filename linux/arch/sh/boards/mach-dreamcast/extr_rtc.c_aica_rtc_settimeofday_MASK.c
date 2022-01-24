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
typedef  int time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AICA_RTC_SECS_H ; 
 int /*<<< orphan*/  AICA_RTC_SECS_L ; 
 int TWENTY_YEARS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	unsigned long val1, val2;
	time64_t secs = FUNC2(tm);
	u32 adj = secs + TWENTY_YEARS;

	do {
		FUNC1((adj & 0xffff0000) >> 16, AICA_RTC_SECS_H);
		FUNC1((adj & 0xffff), AICA_RTC_SECS_L);

		val1 = ((FUNC0(AICA_RTC_SECS_H) & 0xffff) << 16) |
			(FUNC0(AICA_RTC_SECS_L) & 0xffff);

		val2 = ((FUNC0(AICA_RTC_SECS_H) & 0xffff) << 16) |
			(FUNC0(AICA_RTC_SECS_L) & 0xffff);
	} while (val1 != val2);

	return 0;
}