#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct nullb_device {scalar_t__ queue_mode; scalar_t__ cache_size; int index; scalar_t__ zoned; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  zone_size_sects; int /*<<< orphan*/  flags; scalar_t__ mbps; int /*<<< orphan*/  home_node; struct nullb* nullb; } ;
struct TYPE_19__ {int timeout; } ;
struct nullb {int index; TYPE_2__* tag_set; TYPE_2__ __tag_set; TYPE_4__* q; int /*<<< orphan*/  list; int /*<<< orphan*/  disk_name; struct nullb_device* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_18__ {int /*<<< orphan*/  zoned; } ;
struct TYPE_20__ {struct nullb* queuedata; TYPE_1__ limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_ZONED_HM ; 
 int /*<<< orphan*/  ELEVATOR_F_ZBD_SEQ_WRITE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  NULLB_DEV_FL_CACHE ; 
 int /*<<< orphan*/  NULLB_DEV_FL_THROTTLED ; 
 scalar_t__ NULL_Q_BIO ; 
 scalar_t__ NULL_Q_MQ ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  QUEUE_FLAG_ZONE_RESETALL ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_4__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nullb*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct nullb*) ; 
 int /*<<< orphan*/  FUNC16 (struct nullb*) ; 
 struct nullb* FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct nullb*) ; 
 int FUNC22 (struct nullb*) ; 
 int /*<<< orphan*/  FUNC23 (struct nullb*) ; 
 int FUNC24 (struct nullb*,TYPE_2__*) ; 
 int /*<<< orphan*/  null_queue_bio ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct nullb_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct nullb_device*) ; 
 int FUNC28 (struct nullb_device*) ; 
 int /*<<< orphan*/  nullb_indexes ; 
 int /*<<< orphan*/  nullb_list ; 
 int /*<<< orphan*/  FUNC29 (struct nullb*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC31 (struct nullb*) ; 
 scalar_t__ shared_tags ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ tag_set ; 

__attribute__((used)) static int FUNC34(struct nullb_device *dev)
{
	struct nullb *nullb;
	int rv;

	FUNC26(dev);

	nullb = FUNC17(sizeof(*nullb), GFP_KERNEL, dev->home_node);
	if (!nullb) {
		rv = -ENOMEM;
		goto out;
	}
	nullb->dev = dev;
	dev->nullb = nullb;

	FUNC32(&nullb->lock);

	rv = FUNC31(nullb);
	if (rv)
		goto out_free_nullb;

	if (dev->queue_mode == NULL_Q_MQ) {
		if (shared_tags) {
			nullb->tag_set = &tag_set;
			rv = 0;
		} else {
			nullb->tag_set = &nullb->__tag_set;
			rv = FUNC24(nullb, nullb->tag_set);
		}

		if (rv)
			goto out_cleanup_queues;

		if (!FUNC25())
			goto out_cleanup_queues;

		nullb->tag_set->timeout = 5 * HZ;
		nullb->q = FUNC4(nullb->tag_set);
		if (FUNC0(nullb->q)) {
			rv = -ENOMEM;
			goto out_cleanup_tags;
		}
		FUNC23(nullb);
	} else if (dev->queue_mode == NULL_Q_BIO) {
		nullb->q = FUNC1(GFP_KERNEL, dev->home_node);
		if (!nullb->q) {
			rv = -ENOMEM;
			goto out_cleanup_queues;
		}
		FUNC9(nullb->q, null_queue_bio);
		rv = FUNC15(nullb);
		if (rv)
			goto out_cleanup_blk_queue;
	}

	if (dev->mbps) {
		FUNC30(NULLB_DEV_FL_THROTTLED, &dev->flags);
		FUNC29(nullb);
	}

	if (dev->cache_size > 0) {
		FUNC30(NULLB_DEV_FL_CACHE, &nullb->dev->flags);
		FUNC12(nullb->q, true, true);
	}

	if (dev->zoned) {
		rv = FUNC28(dev);
		if (rv)
			goto out_cleanup_blk_queue;

		FUNC5(nullb->q, dev->zone_size_sects);
		nullb->q->limits.zoned = BLK_ZONED_HM;
		FUNC7(QUEUE_FLAG_ZONE_RESETALL, nullb->q);
		FUNC11(nullb->q,
						ELEVATOR_F_ZBD_SEQ_WRITE);
	}

	nullb->q->queuedata = nullb;
	FUNC7(QUEUE_FLAG_NONROT, nullb->q);
	FUNC6(QUEUE_FLAG_ADD_RANDOM, nullb->q);

	FUNC19(&lock);
	nullb->index = FUNC14(&nullb_indexes, 0, 0, GFP_KERNEL);
	dev->index = nullb->index;
	FUNC20(&lock);

	FUNC8(nullb->q, dev->blocksize);
	FUNC10(nullb->q, dev->blocksize);

	FUNC21(nullb);

	FUNC33(nullb->disk_name, "nullb%d", nullb->index);

	rv = FUNC22(nullb);
	if (rv)
		goto out_cleanup_zone;

	FUNC19(&lock);
	FUNC18(&nullb->list, &nullb_list);
	FUNC20(&lock);

	return 0;
out_cleanup_zone:
	if (dev->zoned)
		FUNC27(dev);
out_cleanup_blk_queue:
	FUNC2(nullb->q);
out_cleanup_tags:
	if (dev->queue_mode == NULL_Q_MQ && nullb->tag_set == &nullb->__tag_set)
		FUNC3(nullb->tag_set);
out_cleanup_queues:
	FUNC13(nullb);
out_free_nullb:
	FUNC16(nullb);
out:
	return rv;
}