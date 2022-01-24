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
struct request_queue {int /*<<< orphan*/  sysfs_dir_lock; int /*<<< orphan*/  sysfs_lock; TYPE_1__* elevator; int /*<<< orphan*/  kobj; int /*<<< orphan*/  q_usage_counter; } ;
struct gendisk {struct request_queue* queue; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  QUEUE_FLAG_INIT_DONE ; 
 int /*<<< orphan*/  QUEUE_FLAG_REGISTERED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*) ; 
 int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 struct device* FUNC10 (struct gendisk*) ; 
 int FUNC11 (struct request_queue*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_attr_group ; 
 scalar_t__ FUNC21 (struct request_queue*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct request_queue*) ; 

int FUNC24(struct gendisk *disk)
{
	int ret;
	struct device *dev = FUNC10(disk);
	struct request_queue *q = disk->queue;
	bool has_elevator = false;

	if (FUNC0(!q))
		return -ENXIO;

	FUNC1(FUNC6(q),
		  "%s is registering an already registered queue\n",
		  FUNC15(&dev->kobj));

	/*
	 * SCSI probing may synchronously create and destroy a lot of
	 * request_queues for non-existent devices.  Shutting down a fully
	 * functional queue takes measureable wallclock time as RCU grace
	 * periods are involved.  To avoid excessive latency in these
	 * cases, a request_queue starts out in a degraded mode which is
	 * faster to shut down and is made fully functional here as
	 * request_queues for non-existent devices never get registered.
	 */
	if (!FUNC5(q)) {
		FUNC4(QUEUE_FLAG_INIT_DONE, q);
		FUNC20(&q->q_usage_counter);
	}

	ret = FUNC8(dev);
	if (ret)
		return ret;

	FUNC18(&q->sysfs_dir_lock);

	ret = FUNC12(&q->kobj, FUNC14(&dev->kobj), "%s", "queue");
	if (ret < 0) {
		FUNC9(dev);
		goto unlock;
	}

	ret = FUNC22(&q->kobj, &queue_attr_group);
	if (ret) {
		FUNC9(dev);
		FUNC13(&q->kobj);
		FUNC16(&dev->kobj);
		goto unlock;
	}

	if (FUNC21(q)) {
		FUNC2(dev, q);
		FUNC3(q);
	}

	FUNC18(&q->sysfs_lock);
	if (q->elevator) {
		ret = FUNC11(q, false);
		if (ret) {
			FUNC19(&q->sysfs_lock);
			FUNC19(&q->sysfs_dir_lock);
			FUNC13(&q->kobj);
			FUNC9(dev);
			FUNC16(&dev->kobj);
			return ret;
		}
		has_elevator = true;
	}

	FUNC4(QUEUE_FLAG_REGISTERED, q);
	FUNC23(q);
	FUNC7(q);

	/* Now everything is ready and send out KOBJ_ADD uevent */
	FUNC17(&q->kobj, KOBJ_ADD);
	if (has_elevator)
		FUNC17(&q->elevator->kobj, KOBJ_ADD);
	FUNC19(&q->sysfs_lock);

	ret = 0;
unlock:
	FUNC19(&q->sysfs_dir_lock);
	return ret;
}