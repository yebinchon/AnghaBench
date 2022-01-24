#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gendisk {TYPE_1__* ev; int /*<<< orphan*/  disk_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gendisk*,int) ; 
 int /*<<< orphan*/  disk_events ; 
 int /*<<< orphan*/  disk_events_attrs ; 
 int /*<<< orphan*/  disk_events_mutex ; 
 TYPE_2__* FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gendisk *disk)
{
	/* FIXME: error handling */
	if (FUNC6(&FUNC1(disk)->kobj, disk_events_attrs) < 0)
		FUNC5("%s: failed to create sysfs files for events\n",
			disk->disk_name);

	if (!disk->ev)
		return;

	FUNC3(&disk_events_mutex);
	FUNC2(&disk->ev->node, &disk_events);
	FUNC4(&disk_events_mutex);

	/*
	 * Block count is initialized to 1 and the following initial
	 * unblock kicks it into action.
	 */
	FUNC0(disk, true);
}