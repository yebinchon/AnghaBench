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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;

/* Variables and functions */
 int I2C_WRITE_MASK ; 
 int RTC_I2C_ADDRESS ; 
 int RTC_Y2K_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct rtc_time *rtc_tm)
{
	rtc_tm->tm_sec  = FUNC5(rtc_tm->tm_sec);
	rtc_tm->tm_min  = FUNC5(rtc_tm->tm_min);
	rtc_tm->tm_hour = FUNC5(rtc_tm->tm_hour);
	rtc_tm->tm_mday = FUNC5(rtc_tm->tm_mday);
	rtc_tm->tm_mon  = FUNC5(rtc_tm->tm_mon + 1);
	rtc_tm->tm_year = FUNC5(rtc_tm->tm_year);

	if (rtc_tm->tm_year >= 0x100) {
		rtc_tm->tm_year -= 0x100;
		rtc_tm->tm_mon |= RTC_Y2K_MASK;
	}

	FUNC3(&rtc_lock);
	FUNC1();
	FUNC0(RTC_I2C_ADDRESS | I2C_WRITE_MASK);
	FUNC0(0x00);	/* set starting register to 0 (=seconds) */
	FUNC0(rtc_tm->tm_sec);
	FUNC0(rtc_tm->tm_min);
	FUNC0(rtc_tm->tm_hour);
	FUNC0(rtc_tm->tm_wday);
	FUNC0(rtc_tm->tm_mday);
	FUNC0(rtc_tm->tm_mon);
	FUNC0(rtc_tm->tm_year);
	FUNC2();
	FUNC4(&rtc_lock);
}