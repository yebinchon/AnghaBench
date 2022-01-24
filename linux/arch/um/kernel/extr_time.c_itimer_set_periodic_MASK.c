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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned long long HZ ; 
 unsigned long long NSEC_PER_SEC ; 
 scalar_t__ TT_MODE_INFCPU ; 
 scalar_t__ TT_MODE_OFF ; 
 int /*<<< orphan*/  TT_TMR_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 scalar_t__ time_travel_mode ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long long time_travel_time ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	unsigned long long interval = NSEC_PER_SEC / HZ;

	if (time_travel_mode != TT_MODE_OFF) {
		FUNC3(TT_TMR_PERIODIC);
		FUNC1(time_travel_time + interval);
		FUNC2(interval);
	}

	if (time_travel_mode != TT_MODE_INFCPU)
		FUNC0(interval);

	return 0;
}