#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clock_event_device {int /*<<< orphan*/  (* event_handler ) (struct clock_event_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  clock_comparator; } ;

/* Variables and functions */
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  clock_comparator_max ; 
 int /*<<< orphan*/  comparators ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 struct clock_event_device* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	struct clock_event_device *cd;

	S390_lowcore.clock_comparator = clock_comparator_max;
	cd = FUNC1(&comparators);
	cd->event_handler(cd);
}