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
struct request_queue {scalar_t__ queuedata; } ;
struct drbd_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,struct bio*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*) ; 
 unsigned long jiffies ; 

blk_qc_t FUNC5(struct request_queue *q, struct bio *bio)
{
	struct drbd_device *device = (struct drbd_device *) q->queuedata;
	unsigned long start_jif;

	FUNC3(q, &bio);

	start_jif = jiffies;

	/*
	 * what we "blindly" assume:
	 */
	FUNC0(device, FUNC1(bio->bi_iter.bi_size, 512));

	FUNC4(device);
	FUNC2(device, bio, start_jif);
	return BLK_QC_T_NONE;
}