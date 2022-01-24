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
typedef  int u8 ;
typedef  int u32 ;
struct timespec64 {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_DAY_OF_MONTH ; 
 int /*<<< orphan*/  RTC_FREQ_SELECT ; 
 int /*<<< orphan*/  RTC_HOURS ; 
 int /*<<< orphan*/  RTC_MINUTES ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SECONDS ; 
 int RTC_UIP ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct timespec64 *now)
{
	u8 sec, min, hour, mday, mon;
	unsigned long flags;
	u32 year;

	FUNC3(&rtc_lock, flags);

	while ((FUNC5(RTC_FREQ_SELECT) & RTC_UIP))
		FUNC0();

	sec = FUNC5(RTC_SECONDS);
	min = FUNC5(RTC_MINUTES);
	hour = FUNC5(RTC_HOURS);
	mday = FUNC5(RTC_DAY_OF_MONTH);
	mon = FUNC5(RTC_MONTH);
	year = FUNC5(RTC_YEAR);

	FUNC4(&rtc_lock, flags);

	/* vRTC YEAR reg contains the offset to 1972 */
	year += 1972;

	FUNC2("vRTC: sec: %d min: %d hour: %d day: %d "
		"mon: %d year: %d\n", sec, min, hour, mday, mon, year);

	now->tv_sec = FUNC1(year, mon, mday, hour, min, sec);
	now->tv_nsec = 0;
}