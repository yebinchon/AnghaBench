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
struct timespec64 {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
#define  RTC_M41T81 130 
#define  RTC_NONE 129 
#define  RTC_XICOR 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int swarm_rtc_type ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct timespec64 *ts)
{
	time64_t sec;

	switch (swarm_rtc_type) {
	case RTC_XICOR:
		sec = FUNC2();
		break;

	case RTC_M41T81:
		sec = FUNC0();
		break;

	case RTC_NONE:
	default:
		sec = FUNC1(2000, 1, 1, 0, 0, 0);
		break;
	}
	ts->tv_sec = sec;
	ts->tv_nsec = 0;
}