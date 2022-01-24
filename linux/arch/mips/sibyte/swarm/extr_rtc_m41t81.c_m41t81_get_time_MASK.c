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
typedef  int /*<<< orphan*/  time64_t ;

/* Variables and functions */
 int /*<<< orphan*/  M41T81REG_DT ; 
 int /*<<< orphan*/  M41T81REG_HR ; 
 int /*<<< orphan*/  M41T81REG_MN ; 
 int /*<<< orphan*/  M41T81REG_MO ; 
 int /*<<< orphan*/  M41T81REG_SC ; 
 int /*<<< orphan*/  M41T81REG_YR ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

time64_t FUNC5(void)
{
	unsigned int year, mon, day, hour, min, sec;
	unsigned long flags;

	/*
	 * min is valid if two reads of sec are the same.
	 */
	for (;;) {
		FUNC3(&rtc_lock, flags);
		sec = FUNC1(M41T81REG_SC);
		min = FUNC1(M41T81REG_MN);
		if (sec == FUNC1(M41T81REG_SC)) break;
		FUNC4(&rtc_lock, flags);
	}
	hour = FUNC1(M41T81REG_HR) & 0x3f;
	day = FUNC1(M41T81REG_DT);
	mon = FUNC1(M41T81REG_MO);
	year = FUNC1(M41T81REG_YR);
	FUNC4(&rtc_lock, flags);

	sec = FUNC0(sec);
	min = FUNC0(min);
	hour = FUNC0(hour);
	day = FUNC0(day);
	mon = FUNC0(mon);
	year = FUNC0(year);

	year += 2000;

	return FUNC2(year, mon, day, hour, min, sec);
}