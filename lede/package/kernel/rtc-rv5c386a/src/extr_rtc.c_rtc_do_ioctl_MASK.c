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
struct rtc_time {int dummy; } ;
typedef  int /*<<< orphan*/  rtc_tm ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_TIME ; 
 int EACCES ; 
 int EFAULT ; 
 int ENOTTY ; 
#define  RTC_RD_TIME 129 
#define  RTC_SET_TIME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time*,struct rtc_time*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct rtc_time*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_time*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC6(unsigned int cmd, unsigned long arg)
{
	struct rtc_time rtc_tm;

	switch (cmd) {
		case RTC_RD_TIME:
			FUNC4(&rtc_tm, 0, sizeof(struct rtc_time));
			FUNC3(&rtc_tm);
			if (FUNC2((void *)arg, &rtc_tm, sizeof(rtc_tm)))
				return -EFAULT;
			break;

		case RTC_SET_TIME:
			if (!FUNC0(CAP_SYS_TIME))
				return -EACCES;

			if (FUNC1(&rtc_tm, (struct rtc_time *)arg,
					   sizeof(struct rtc_time)))
				return -EFAULT;

			FUNC5(&rtc_tm);
			break;

		default:
			return -ENOTTY;
	}

	return 0;
}