#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int max_sectors; scalar_t__ discard_alignment; scalar_t__ discard_granularity; } ;
struct request_queue {TYPE_1__ limits; } ;
struct TYPE_6__ {int nr_hw_queues; int queue_depth; int cmd_size; int flags; struct nbd_device* driver_data; int /*<<< orphan*/  numa_node; int /*<<< orphan*/ * ops; } ;
struct nbd_device {int index; TYPE_2__ tag_set; int /*<<< orphan*/  list; int /*<<< orphan*/  refs; int /*<<< orphan*/  config_refs; int /*<<< orphan*/  config_lock; int /*<<< orphan*/ * destroy_complete; struct gendisk* disk; } ;
struct nbd_cmd {int dummy; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; struct nbd_device* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; struct request_queue* queue; } ;

/* Variables and functions */
 int BLK_MQ_F_BLOCKING ; 
 int BLK_MQ_F_SHOULD_MERGE ; 
 int EEXIST ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  NBD_MAJOR ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*) ; 
 struct gendisk* FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct request_queue* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct nbd_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct nbd_device*) ; 
 struct nbd_device* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nbd_fops ; 
 int /*<<< orphan*/  nbd_index_idr ; 
 int /*<<< orphan*/  nbd_mq_ops ; 
 int /*<<< orphan*/  nbd_total_devices ; 
 int part_shift ; 
 int /*<<< orphan*/  FUNC19 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC22(int index)
{
	struct nbd_device *nbd;
	struct gendisk *disk;
	struct request_queue *q;
	int err = -ENOMEM;

	nbd = FUNC17(sizeof(struct nbd_device), GFP_KERNEL);
	if (!nbd)
		goto out;

	disk = FUNC4(1 << part_shift);
	if (!disk)
		goto out_free_nbd;

	if (index >= 0) {
		err = FUNC14(&nbd_index_idr, nbd, index, index + 1,
				GFP_KERNEL);
		if (err == -ENOSPC)
			err = -EEXIST;
	} else {
		err = FUNC14(&nbd_index_idr, nbd, 0, 0, GFP_KERNEL);
		if (err >= 0)
			index = err;
	}
	if (err < 0)
		goto out_free_disk;

	nbd->index = index;
	nbd->disk = disk;
	nbd->tag_set.ops = &nbd_mq_ops;
	nbd->tag_set.nr_hw_queues = 1;
	nbd->tag_set.queue_depth = 128;
	nbd->tag_set.numa_node = NUMA_NO_NODE;
	nbd->tag_set.cmd_size = sizeof(struct nbd_cmd);
	nbd->tag_set.flags = BLK_MQ_F_SHOULD_MERGE |
		BLK_MQ_F_BLOCKING;
	nbd->tag_set.driver_data = nbd;
	nbd->destroy_complete = NULL;

	err = FUNC5(&nbd->tag_set);
	if (err)
		goto out_free_idr;

	q = FUNC7(&nbd->tag_set);
	if (FUNC1(q)) {
		err = FUNC2(q);
		goto out_free_tags;
	}
	disk->queue = q;

	/*
	 * Tell the block layer that we are not a rotational device
	 */
	FUNC9(QUEUE_FLAG_NONROT, disk->queue);
	FUNC8(QUEUE_FLAG_ADD_RANDOM, disk->queue);
	disk->queue->limits.discard_granularity = 0;
	disk->queue->limits.discard_alignment = 0;
	FUNC10(disk->queue, 0);
	FUNC12(disk->queue, UINT_MAX);
	FUNC13(disk->queue, USHRT_MAX);
	FUNC11(disk->queue, 65536);
	disk->queue->limits.max_sectors = 256;

	FUNC18(&nbd->config_lock);
	FUNC20(&nbd->config_refs, 0);
	FUNC20(&nbd->refs, 1);
	FUNC0(&nbd->list);
	disk->major = NBD_MAJOR;
	disk->first_minor = index << part_shift;
	disk->fops = &nbd_fops;
	disk->private_data = nbd;
	FUNC21(disk->disk_name, "nbd%d", index);
	FUNC3(disk);
	nbd_total_devices++;
	return index;

out_free_tags:
	FUNC6(&nbd->tag_set);
out_free_idr:
	FUNC15(&nbd_index_idr, index);
out_free_disk:
	FUNC19(disk);
out_free_nbd:
	FUNC16(nbd);
out:
	return err;
}