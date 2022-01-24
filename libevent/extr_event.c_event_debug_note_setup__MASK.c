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
struct event_debug_entry {scalar_t__ added; struct event const* ptr; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct event_debug_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct event_debug_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct event_debug_entry*) ; 
 int /*<<< orphan*/  event_debug_map ; 
 int /*<<< orphan*/  event_debug_map_lock_ ; 
 int /*<<< orphan*/  event_debug_mode_on_ ; 
 int event_debug_mode_too_late ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  global_debug_map ; 
 struct event_debug_entry* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(const struct event *ev)
{
	struct event_debug_entry *dent, find;

	if (!event_debug_mode_on_)
		goto out;

	find.ptr = ev;
	FUNC0(event_debug_map_lock_, 0);
	dent = FUNC2(event_debug_map, &global_debug_map, &find);
	if (dent) {
		dent->added = 0;
	} else {
		dent = FUNC5(sizeof(*dent));
		if (!dent)
			FUNC4(1,
			    "Out of memory in debugging code");
		dent->ptr = ev;
		dent->added = 0;
		FUNC3(event_debug_map, &global_debug_map, dent);
	}
	FUNC1(event_debug_map_lock_, 0);

out:
	event_debug_mode_too_late = 1;
}