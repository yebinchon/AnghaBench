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
typedef  scalar_t__ time64_t ;
struct timespec64 {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SET_TIME_CMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct timespec64 now)
{
	time64_t time = now.tv_sec;
	unsigned long flags;

	FUNC4(&rtc_lock, flags);
	FUNC1();
	FUNC2(SET_TIME_CMD);
	/*
	 * Due to the hardware limitation, we cast to 'unsigned long' type,
	 * so it will overflow in year 2106 on 32-bit machine.
	 */
	FUNC3((unsigned long)time);
	FUNC0();
	FUNC5(&rtc_lock, flags);

	return 0;
}