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
struct TYPE_2__ {struct event_counter* name; } ;
struct event_counter {TYPE_1__ attr; } ;

/* Variables and functions */
 struct event_counter* all_attrs ; 
 struct event_counter* all_counters ; 
 struct event_counter* counter_attrs ; 
 int /*<<< orphan*/  FUNC0 (struct event_counter*) ; 
 int num_gpes ; 

__attribute__((used)) static void FUNC1(void)
{
	struct event_counter *tmp = all_counters;

	all_counters = NULL;
	FUNC0(tmp);

	if (counter_attrs) {
		int i;

		for (i = 0; i < num_gpes; i++)
			FUNC0(counter_attrs[i].attr.name);

		FUNC0(counter_attrs);
	}
	FUNC0(all_attrs);

	return;
}