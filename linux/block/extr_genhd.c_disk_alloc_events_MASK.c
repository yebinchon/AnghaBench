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
struct gendisk {struct disk_events* ev; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  events; TYPE_1__* fops; } ;
struct disk_events {int block; int poll_msecs; int /*<<< orphan*/  dwork; int /*<<< orphan*/  block_mutex; int /*<<< orphan*/  lock; struct gendisk* disk; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  check_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disk_events_workfn ; 
 struct disk_events* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gendisk *disk)
{
	struct disk_events *ev;

	if (!disk->fops->check_events || !disk->events)
		return;

	ev = FUNC2(sizeof(*ev), GFP_KERNEL);
	if (!ev) {
		FUNC4("%s: failed to initialize events\n", disk->disk_name);
		return;
	}

	FUNC1(&ev->node);
	ev->disk = disk;
	FUNC5(&ev->lock);
	FUNC3(&ev->block_mutex);
	ev->block = 1;
	ev->poll_msecs = -1;
	FUNC0(&ev->dwork, disk_events_workfn);

	disk->ev = ev;
}