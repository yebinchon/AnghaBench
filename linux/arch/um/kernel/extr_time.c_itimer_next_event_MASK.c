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
 scalar_t__ TT_MODE_INFCPU ; 
 scalar_t__ TT_MODE_OFF ; 
 int /*<<< orphan*/  TT_TMR_ONESHOT ; 
 int FUNC0 (unsigned long) ; 
 scalar_t__ time_travel_mode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ time_travel_time ; 

__attribute__((used)) static int FUNC3(unsigned long delta,
			     struct clock_event_device *evt)
{
	delta += 1;

	if (time_travel_mode != TT_MODE_OFF) {
		FUNC2(TT_TMR_ONESHOT);
		FUNC1(time_travel_time + delta);
	}

	if (time_travel_mode != TT_MODE_INFCPU)
		return FUNC0(delta);

	return 0;
}