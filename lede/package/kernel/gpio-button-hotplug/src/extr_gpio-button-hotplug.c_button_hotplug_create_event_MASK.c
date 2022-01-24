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
struct bh_event {char const* name; unsigned int type; unsigned long seen; char* action; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned long,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ button_hotplug_work ; 
 struct bh_event* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const char *name, unsigned int type,
		unsigned long seen, int pressed)
{
	struct bh_event *event;

	FUNC0("create event, name=%s, seen=%lu, pressed=%d\n",
		name, seen, pressed);

	event = FUNC2(sizeof(*event), GFP_KERNEL);
	if (!event)
		return -ENOMEM;

	event->name = name;
	event->type = type;
	event->seen = seen;
	event->action = pressed ? "pressed" : "released";

	FUNC1(&event->work, (void *)(void *)button_hotplug_work);
	FUNC3(&event->work);

	return 0;
}