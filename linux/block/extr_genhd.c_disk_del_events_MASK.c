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
struct gendisk {TYPE_1__* ev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  disk_events_attrs ; 
 int /*<<< orphan*/  disk_events_mutex ; 
 TYPE_2__* FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gendisk *disk)
{
	if (disk->ev) {
		FUNC0(disk);

		FUNC3(&disk_events_mutex);
		FUNC2(&disk->ev->node);
		FUNC4(&disk_events_mutex);
	}

	FUNC5(&FUNC1(disk)->kobj, disk_events_attrs);
}