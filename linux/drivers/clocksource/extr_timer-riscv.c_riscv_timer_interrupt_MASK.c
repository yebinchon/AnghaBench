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
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIE_STIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  riscv_clock_event ; 
 int /*<<< orphan*/  sie ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*) ; 
 struct clock_event_device* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct clock_event_device *evdev = FUNC2(&riscv_clock_event);

	FUNC0(sie, SIE_STIE);
	evdev->event_handler(evdev);
}