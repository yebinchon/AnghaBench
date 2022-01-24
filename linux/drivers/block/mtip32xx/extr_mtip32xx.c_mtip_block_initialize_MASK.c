#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct mtip_cmd {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_29__ {int nr_hw_queues; int reserved_tags; int cmd_size; int /*<<< orphan*/  timeout; struct driver_data* driver_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/ * ops; } ;
struct driver_data {unsigned int index; TYPE_3__* disk; TYPE_5__ tags; TYPE_2__* queue; int /*<<< orphan*/ * bdev; TYPE_2__* mtip_svc_handler; TYPE_1__* pdev; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_30__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_28__ {unsigned int first_minor; unsigned int minors; TYPE_2__* queue; struct driver_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; int /*<<< orphan*/  disk_name; } ;
struct TYPE_27__ {struct driver_data* queuedata; } ;
struct TYPE_26__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 int /*<<< orphan*/  DISK_NAME_LEN ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  MTIP_DDF_INIT_DONE_BIT ; 
 int MTIP_FTL_REBUILD_MAGIC ; 
 int /*<<< orphan*/  MTIP_MAX_COMMAND_SLOTS ; 
 unsigned int MTIP_MAX_MINORS ; 
 int /*<<< orphan*/  MTIP_MAX_SG ; 
 int /*<<< orphan*/  MTIP_NCQ_CMD_TIMEOUT_MS ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 TYPE_3__* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_2__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned int) ; 
 struct kobject* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct kobject*) ; 
 TYPE_2__* FUNC25 (int /*<<< orphan*/ ,struct driver_data*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtip_block_ops ; 
 int /*<<< orphan*/  FUNC27 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC28 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC29 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC30 (struct driver_data*,int /*<<< orphan*/ *) ; 
 int FUNC31 (struct driver_data*) ; 
 scalar_t__ FUNC32 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC33 (struct driver_data*,struct kobject*) ; 
 int /*<<< orphan*/  mtip_mq_ops ; 
 int /*<<< orphan*/  mtip_service_thread ; 
 int /*<<< orphan*/  FUNC34 (TYPE_3__*) ; 
 int FUNC35 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rssd_index_ida ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC39(struct driver_data *dd)
{
	int rv = 0, wait_for_rebuild = 0;
	sector_t capacity;
	unsigned int index = 0;
	struct kobject *kobj;

	if (dd->disk)
		goto skip_create_disk; /* hw init done, before rebuild */

	if (FUNC32(dd)) {
		rv = -EINVAL;
		goto protocol_init_error;
	}

	dd->disk = FUNC1(MTIP_MAX_MINORS, dd->numa_node);
	if (dd->disk  == NULL) {
		FUNC16(&dd->pdev->dev,
			"Unable to allocate gendisk structure\n");
		rv = -EINVAL;
		goto alloc_disk_error;
	}

	rv = FUNC21(&rssd_index_ida, GFP_KERNEL);
	if (rv < 0)
		goto ida_get_error;
	index = rv;

	rv = FUNC35("rssd",
				index,
				dd->disk->disk_name,
				DISK_NAME_LEN);
	if (rv)
		goto disk_index_error;

	dd->disk->major		= dd->major;
	dd->disk->first_minor	= index * MTIP_MAX_MINORS;
	dd->disk->minors 	= MTIP_MAX_MINORS;
	dd->disk->fops		= &mtip_block_ops;
	dd->disk->private_data	= dd;
	dd->index		= index;

	FUNC28(dd);

	FUNC26(&dd->tags, 0, sizeof(dd->tags));
	dd->tags.ops = &mtip_mq_ops;
	dd->tags.nr_hw_queues = 1;
	dd->tags.queue_depth = MTIP_MAX_COMMAND_SLOTS;
	dd->tags.reserved_tags = 1;
	dd->tags.cmd_size = sizeof(struct mtip_cmd);
	dd->tags.numa_node = dd->numa_node;
	dd->tags.flags = BLK_MQ_F_SHOULD_MERGE;
	dd->tags.driver_data = dd;
	dd->tags.timeout = MTIP_NCQ_CMD_TIMEOUT_MS;

	rv = FUNC5(&dd->tags);
	if (rv) {
		FUNC16(&dd->pdev->dev,
			"Unable to allocate request queue\n");
		goto block_queue_alloc_tag_error;
	}

	/* Allocate the request queue. */
	dd->queue = FUNC7(&dd->tags);
	if (FUNC0(dd->queue)) {
		FUNC16(&dd->pdev->dev,
			"Unable to allocate request queue\n");
		rv = -ENOMEM;
		goto block_queue_alloc_init_error;
	}

	dd->disk->queue		= dd->queue;
	dd->queue->queuedata	= dd;

skip_create_disk:
	/* Initialize the protocol layer. */
	wait_for_rebuild = FUNC31(dd);
	if (wait_for_rebuild < 0) {
		FUNC16(&dd->pdev->dev,
			"Protocol layer initialization failed\n");
		rv = -EINVAL;
		goto init_hw_cmds_error;
	}

	/*
	 * if rebuild pending, start the service thread, and delay the block
	 * queue creation and device_add_disk()
	 */
	if (wait_for_rebuild == MTIP_FTL_REBUILD_MAGIC)
		goto start_service_thread;

	/* Set device limits. */
	FUNC9(QUEUE_FLAG_NONROT, dd->queue);
	FUNC8(QUEUE_FLAG_ADD_RANDOM, dd->queue);
	FUNC13(dd->queue, MTIP_MAX_SG);
	FUNC14(dd->queue, 4096);
	FUNC11(dd->queue, 0xffff);
	FUNC12(dd->queue, 0x400000);
	FUNC20(&dd->pdev->dev, 0x400000);
	FUNC10(dd->queue, 4096);

	/* Set the capacity of the device in 512 byte sectors. */
	if (!(FUNC30(dd, &capacity))) {
		FUNC17(&dd->pdev->dev,
			"Could not read drive capacity\n");
		rv = -EIO;
		goto read_capacity_error;
	}
	FUNC37(dd->disk, capacity);

	/* Enable the block device and add it to /dev */
	FUNC18(&dd->pdev->dev, dd->disk, NULL);

	dd->bdev = FUNC2(dd->disk, 0);
	/*
	 * Now that the disk is active, initialize any sysfs attributes
	 * managed by the protocol layer.
	 */
	kobj = FUNC23(&FUNC19(dd->disk)->kobj);
	if (kobj) {
		FUNC33(dd, kobj);
		FUNC24(kobj);
	}

	if (dd->mtip_svc_handler) {
		FUNC36(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag);
		return rv; /* service thread created for handling rebuild */
	}

start_service_thread:
	dd->mtip_svc_handler = FUNC25(mtip_service_thread,
						dd, dd->numa_node,
						"mtip_svc_thd_%02d", index);

	if (FUNC0(dd->mtip_svc_handler)) {
		FUNC16(&dd->pdev->dev, "service thread failed to start\n");
		dd->mtip_svc_handler = NULL;
		rv = -EFAULT;
		goto kthread_run_error;
	}
	FUNC38(dd->mtip_svc_handler);
	if (wait_for_rebuild == MTIP_FTL_REBUILD_MAGIC)
		rv = wait_for_rebuild;

	return rv;

kthread_run_error:
	FUNC3(dd->bdev);
	dd->bdev = NULL;

	/* Delete our gendisk. This also removes the device from /dev */
	FUNC15(dd->disk);

read_capacity_error:
init_hw_cmds_error:
	FUNC4(dd->queue);
block_queue_alloc_init_error:
	FUNC6(&dd->tags);
block_queue_alloc_tag_error:
	FUNC27(dd);
disk_index_error:
	FUNC22(&rssd_index_ida, index);

ida_get_error:
	FUNC34(dd->disk);

alloc_disk_error:
	FUNC29(dd); /* De-initialize the protocol layer. */

protocol_init_error:
	return rv;
}