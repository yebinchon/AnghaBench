#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nr_hw_queues; int queue_depth; int cmd_size; struct loop_device* driver_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/ * ops; } ;
struct loop_device {int lo_number; TYPE_4__ tag_set; TYPE_1__* lo_queue; int /*<<< orphan*/  lo_lock; int /*<<< orphan*/  lo_refcnt; struct gendisk* lo_disk; int /*<<< orphan*/  lo_state; } ;
struct loop_cmd {int dummy; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; TYPE_1__* queue; struct loop_device* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {struct loop_device* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_DEF_MAX_SECTORS ; 
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int EEXIST ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GENHD_FL_NO_PART_SCAN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOOP_MAJOR ; 
 int /*<<< orphan*/  Lo_unbound ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  QUEUE_FLAG_NOMERGES ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 struct gendisk* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 TYPE_1__* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct loop_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct loop_device*) ; 
 struct loop_device* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lo_fops ; 
 int /*<<< orphan*/  loop_index_idr ; 
 int /*<<< orphan*/  loop_mq_ops ; 
 int part_shift ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC17(struct loop_device **l, int i)
{
	struct loop_device *lo;
	struct gendisk *disk;
	int err;

	err = -ENOMEM;
	lo = FUNC14(sizeof(*lo), GFP_KERNEL);
	if (!lo)
		goto out;

	lo->lo_state = Lo_unbound;

	/* allocate id, if @id >= 0, we're requesting that specific id */
	if (i >= 0) {
		err = FUNC11(&loop_index_idr, lo, i, i + 1, GFP_KERNEL);
		if (err == -ENOSPC)
			err = -EEXIST;
	} else {
		err = FUNC11(&loop_index_idr, lo, 0, 0, GFP_KERNEL);
	}
	if (err < 0)
		goto out_free_dev;
	i = err;

	err = -ENOMEM;
	lo->tag_set.ops = &loop_mq_ops;
	lo->tag_set.nr_hw_queues = 1;
	lo->tag_set.queue_depth = 128;
	lo->tag_set.numa_node = NUMA_NO_NODE;
	lo->tag_set.cmd_size = sizeof(struct loop_cmd);
	lo->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
	lo->tag_set.driver_data = lo;

	err = FUNC6(&lo->tag_set);
	if (err)
		goto out_free_idr;

	lo->lo_queue = FUNC8(&lo->tag_set);
	if (FUNC0(lo->lo_queue)) {
		err = FUNC1(lo->lo_queue);
		goto out_cleanup_tags;
	}
	lo->lo_queue->queuedata = lo;

	FUNC10(lo->lo_queue, BLK_DEF_MAX_SECTORS);

	/*
	 * By default, we do buffer IO, so it doesn't make sense to enable
	 * merge because the I/O submitted to backing file is handled page by
	 * page. For directio mode, merge does help to dispatch bigger request
	 * to underlayer disk. We will enable merge once directio is enabled.
	 */
	FUNC9(QUEUE_FLAG_NOMERGES, lo->lo_queue);

	err = -ENOMEM;
	disk = lo->lo_disk = FUNC3(1 << part_shift);
	if (!disk)
		goto out_free_queue;

	/*
	 * Disable partition scanning by default. The in-kernel partition
	 * scanning can be requested individually per-device during its
	 * setup. Userspace can always add and remove partitions from all
	 * devices. The needed partition minors are allocated from the
	 * extended minor space, the main loop device numbers will continue
	 * to match the loop minors, regardless of the number of partitions
	 * used.
	 *
	 * If max_part is given, partition scanning is globally enabled for
	 * all loop devices. The minors for the main loop devices will be
	 * multiples of max_part.
	 *
	 * Note: Global-for-all-devices, set-only-at-init, read-only module
	 * parameteters like 'max_loop' and 'max_part' make things needlessly
	 * complicated, are too static, inflexible and may surprise
	 * userspace tools. Parameters like this in general should be avoided.
	 */
	if (!part_shift)
		disk->flags |= GENHD_FL_NO_PART_SCAN;
	disk->flags |= GENHD_FL_EXT_DEVT;
	FUNC4(&lo->lo_refcnt, 0);
	lo->lo_number		= i;
	FUNC15(&lo->lo_lock);
	disk->major		= LOOP_MAJOR;
	disk->first_minor	= i << part_shift;
	disk->fops		= &lo_fops;
	disk->private_data	= lo;
	disk->queue		= lo->lo_queue;
	FUNC16(disk->disk_name, "loop%d", i);
	FUNC2(disk);
	*l = lo;
	return lo->lo_number;

out_free_queue:
	FUNC5(lo->lo_queue);
out_cleanup_tags:
	FUNC7(&lo->tag_set);
out_free_idr:
	FUNC12(&loop_index_idr, i);
out_free_dev:
	FUNC13(lo);
out:
	return err;
}