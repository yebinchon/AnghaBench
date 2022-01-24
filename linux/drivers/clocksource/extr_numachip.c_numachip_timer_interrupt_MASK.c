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
 int /*<<< orphan*/  numachip2_ced ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 struct clock_event_device* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct clock_event_device *ced = FUNC1(&numachip2_ced);

	ced->event_handler(ced);
}