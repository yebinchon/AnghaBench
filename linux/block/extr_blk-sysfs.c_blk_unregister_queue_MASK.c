#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  sysfs_dir_lock; int /*<<< orphan*/  sysfs_lock; scalar_t__ elevator; int /*<<< orphan*/  kobj; } ;
struct gendisk {struct request_queue* queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  QUEUE_FLAG_REGISTERED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct request_queue*) ; 

void FUNC13(struct gendisk *disk)
{
	struct request_queue *q = disk->queue;

	if (FUNC0(!q))
		return;

	/* Return early if disk->queue was never registered. */
	if (!FUNC3(q))
		return;

	/*
	 * Since sysfs_remove_dir() prevents adding new directory entries
	 * before removal of existing entries starts, protect against
	 * concurrent elv_iosched_store() calls.
	 */
	FUNC10(&q->sysfs_lock);
	FUNC2(QUEUE_FLAG_REGISTERED, q);
	FUNC11(&q->sysfs_lock);

	FUNC10(&q->sysfs_dir_lock);
	/*
	 * Remove the sysfs attributes before unregistering the queue data
	 * structures that can be modified through sysfs.
	 */
	if (FUNC12(q))
		FUNC1(FUNC5(disk), q);

	FUNC9(&q->kobj, KOBJ_REMOVE);
	FUNC7(&q->kobj);
	FUNC4(FUNC5(disk));

	FUNC10(&q->sysfs_lock);
	if (q->elevator)
		FUNC6(q);
	FUNC11(&q->sysfs_lock);
	FUNC11(&q->sysfs_dir_lock);

	FUNC8(&FUNC5(disk)->kobj);
}