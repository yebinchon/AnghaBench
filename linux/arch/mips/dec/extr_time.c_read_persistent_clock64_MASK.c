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
struct timespec64 {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTC_ALWAYS_BCD ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 int /*<<< orphan*/  RTC_DEC_YEAR ; 
 unsigned int RTC_DM_BINARY ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct timespec64 *ts)
{
	unsigned int year, mon, day, hour, min, sec, real_year;
	unsigned long flags;

	FUNC3(&rtc_lock, flags);

	do {
		sec = FUNC0(RTC_SECONDS);
		min = FUNC0(RTC_MINUTES);
		hour = FUNC0(RTC_HOURS);
		day = FUNC0(RTC_DAY_OF_MONTH);
		mon = FUNC0(RTC_MONTH);
		year = FUNC0(RTC_YEAR);
		/*
		 * The PROM will reset the year to either '72 or '73.
		 * Therefore we store the real year separately, in one
		 * of unused BBU RAM locations.
		 */
		real_year = FUNC0(RTC_DEC_YEAR);
	} while (sec != FUNC0(RTC_SECONDS));

	FUNC4(&rtc_lock, flags);

	if (!(FUNC0(RTC_CONTROL) & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
		sec = FUNC1(sec);
		min = FUNC1(min);
		hour = FUNC1(hour);
		day = FUNC1(day);
		mon = FUNC1(mon);
		year = FUNC1(year);
	}

	year += real_year - 72 + 2000;

	ts->tv_sec = FUNC2(year, mon, day, hour, min, sec);
	ts->tv_nsec = 0;
}