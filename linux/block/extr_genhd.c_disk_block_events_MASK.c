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
struct gendisk {struct disk_events* ev; } ;
struct disk_events {int /*<<< orphan*/  block_mutex; int /*<<< orphan*/  dwork; int /*<<< orphan*/  lock; int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct gendisk *disk)
{
	struct disk_events *ev = disk->ev;
	unsigned long flags;
	bool cancel;

	if (!ev)
		return;

	/*
	 * Outer mutex ensures that the first blocker completes canceling
	 * the event work before further blockers are allowed to finish.
	 */
	FUNC1(&ev->block_mutex);

	FUNC3(&ev->lock, flags);
	cancel = !ev->block++;
	FUNC4(&ev->lock, flags);

	if (cancel)
		FUNC0(&disk->ev->dwork);

	FUNC2(&ev->block_mutex);
}