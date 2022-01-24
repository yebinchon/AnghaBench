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
struct digicolor_timer {int /*<<< orphan*/  ticks_per_jiffy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_MODE_PERIODIC ; 
 struct digicolor_timer* FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *ce)
{
	struct digicolor_timer *dt = FUNC0(ce);

	FUNC1(ce);
	FUNC3(ce, dt->ticks_per_jiffy);
	FUNC2(ce, CONTROL_MODE_PERIODIC);
	return 0;
}