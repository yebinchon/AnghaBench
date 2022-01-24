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
struct event_debug_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct event_debug_entry** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct event_debug_entry**) ; 
 struct event_debug_entry** FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_debug_map ; 
 int /*<<< orphan*/  event_debug_map_lock_ ; 
 scalar_t__ event_debug_mode_on_ ; 
 int /*<<< orphan*/  global_debug_map ; 
 int /*<<< orphan*/  FUNC5 (struct event_debug_entry*) ; 

void
FUNC6(void)
{
#ifndef EVENT__DISABLE_DEBUG_MODE
	struct event_debug_entry **ent, *victim;

	FUNC0(event_debug_map_lock_, 0);
	for (ent = FUNC4(event_debug_map, &global_debug_map); ent; ) {
		victim = *ent;
		ent = FUNC3(event_debug_map, &global_debug_map, ent);
		FUNC5(victim);
	}
	FUNC2(event_debug_map, &global_debug_map);
	FUNC1(event_debug_map_lock_ , 0);

	event_debug_mode_on_  = 0;
#endif
}