#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct zram {TYPE_3__* disk; int /*<<< orphan*/  compressor; int /*<<< orphan*/  wb_limit_lock; int /*<<< orphan*/  init_lock; } ;
struct TYPE_6__ {scalar_t__ discard_granularity; } ;
struct request_queue {TYPE_2__* backing_dev_info; TYPE_1__ limits; struct zram* queuedata; } ;
struct TYPE_8__ {int first_minor; int /*<<< orphan*/  disk_name; struct request_queue* queue; struct zram* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct TYPE_7__ {int capabilities; } ;

/* Variables and functions */
 int BDI_CAP_STABLE_WRITES ; 
 int BDI_CAP_SYNCHRONOUS_IO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ ZRAM_LOGICAL_BLOCK_SIZE ; 
 TYPE_3__* FUNC0 (int) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct request_queue*,scalar_t__) ; 
 int /*<<< orphan*/  default_compressor ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct zram*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct zram*) ; 
 struct zram* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct zram*) ; 
 int /*<<< orphan*/  zram_devops ; 
 int /*<<< orphan*/  zram_disk_attr_groups ; 
 int /*<<< orphan*/  zram_index_idr ; 
 int /*<<< orphan*/  zram_major ; 
 int /*<<< orphan*/  zram_make_request ; 

__attribute__((used)) static int FUNC25(void)
{
	struct zram *zram;
	struct request_queue *queue;
	int ret, device_id;

	zram = FUNC17(sizeof(struct zram), GFP_KERNEL);
	if (!zram)
		return -ENOMEM;

	ret = FUNC13(&zram_index_idr, zram, 0, 0, GFP_KERNEL);
	if (ret < 0)
		goto out_free_dev;
	device_id = ret;

	FUNC15(&zram->init_lock);
#ifdef CONFIG_ZRAM_WRITEBACK
	spin_lock_init(&zram->wb_limit_lock);
#endif
	queue = FUNC1(GFP_KERNEL);
	if (!queue) {
		FUNC18("Error allocating disk queue for device %d\n",
			device_id);
		ret = -ENOMEM;
		goto out_free_idr;
	}

	FUNC8(queue, zram_make_request);

	/* gendisk structure */
	zram->disk = FUNC0(1);
	if (!zram->disk) {
		FUNC18("Error allocating disk structure for device %d\n",
			device_id);
		ret = -ENOMEM;
		goto out_free_queue;
	}

	zram->disk->major = zram_major;
	zram->disk->first_minor = device_id;
	zram->disk->fops = &zram_devops;
	zram->disk->queue = queue;
	zram->disk->queue->queuedata = zram;
	zram->disk->private_data = zram;
	FUNC21(zram->disk->disk_name, 16, "zram%d", device_id);

	/* Actual capacity set using syfs (/sys/block/zram<id>/disksize */
	FUNC20(zram->disk, 0);
	/* zram devices sort of resembles non-rotational disks */
	FUNC4(QUEUE_FLAG_NONROT, zram->disk->queue);
	FUNC3(QUEUE_FLAG_ADD_RANDOM, zram->disk->queue);

	/*
	 * To ensure that we always get PAGE_SIZE aligned
	 * and n*PAGE_SIZED sized I/O requests.
	 */
	FUNC11(zram->disk->queue, PAGE_SIZE);
	FUNC7(zram->disk->queue,
					ZRAM_LOGICAL_BLOCK_SIZE);
	FUNC5(zram->disk->queue, PAGE_SIZE);
	FUNC6(zram->disk->queue, PAGE_SIZE);
	zram->disk->queue->limits.discard_granularity = PAGE_SIZE;
	FUNC9(zram->disk->queue, UINT_MAX);
	FUNC4(QUEUE_FLAG_DISCARD, zram->disk->queue);

	/*
	 * zram_bio_discard() will clear all logical blocks if logical block
	 * size is identical with physical block size(PAGE_SIZE). But if it is
	 * different, we will skip discarding some parts of logical blocks in
	 * the part of the request range which isn't aligned to physical block
	 * size.  So we can't ensure that all discarded logical blocks are
	 * zeroed.
	 */
	if (ZRAM_LOGICAL_BLOCK_SIZE == PAGE_SIZE)
		FUNC10(zram->disk->queue, UINT_MAX);

	zram->disk->queue->backing_dev_info->capabilities |=
			(BDI_CAP_STABLE_WRITES | BDI_CAP_SYNCHRONOUS_IO);
	FUNC12(NULL, zram->disk, zram_disk_attr_groups);

	FUNC23(zram->compressor, default_compressor, sizeof(zram->compressor));

	FUNC24(zram);
	FUNC19("Added device: %s\n", zram->disk->disk_name);
	return device_id;

out_free_queue:
	FUNC2(queue);
out_free_idr:
	FUNC14(&zram_index_idr, device_id);
out_free_dev:
	FUNC16(zram);
	return ret;
}