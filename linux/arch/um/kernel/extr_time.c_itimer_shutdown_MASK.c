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
 int /*<<< orphan*/  TT_TMR_DISABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ time_travel_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	if (time_travel_mode != TT_MODE_OFF)
		FUNC1(TT_TMR_DISABLED);

	if (time_travel_mode != TT_MODE_INFCPU)
		FUNC0();

	return 0;
}