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
struct timespec64 {unsigned long tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_TIME_CMD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  rtc_lock ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct timespec64 *ts)
{
	unsigned long word;
	unsigned long flags;

	FUNC4(&rtc_lock, flags);
	FUNC1();
	FUNC3(READ_TIME_CMD);
	word = FUNC2();
	FUNC0();
	FUNC5(&rtc_lock, flags);

	ts->tv_sec = word;
	ts->tv_nsec = 0;
}