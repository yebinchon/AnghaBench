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
struct request_queue {int /*<<< orphan*/  make_request_fn; } ;
struct block_device {int /*<<< orphan*/ * bd_disk; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENXIO ; 
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 struct request_queue* FUNC0 (struct block_device*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct block_device*) ; 
 int FUNC4 (struct bio*) ; 

int FUNC5(struct block_device *bdev, gfp_t gfp_mask,
		sector_t *error_sector)
{
	struct request_queue *q;
	struct bio *bio;
	int ret = 0;

	if (bdev->bd_disk == NULL)
		return -ENXIO;

	q = FUNC0(bdev);
	if (!q)
		return -ENXIO;

	/*
	 * some block devices may not have their queue correctly set up here
	 * (e.g. loop device without a backing file) and so issuing a flush
	 * here will panic. Ensure there is a request function before issuing
	 * the flush.
	 */
	if (!q->make_request_fn)
		return -ENXIO;

	bio = FUNC1(gfp_mask, 0);
	FUNC3(bio, bdev);
	bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;

	ret = FUNC4(bio);

	/*
	 * The driver must store the error location in ->bi_sector, if
	 * it supports it. For non-stacked drivers, this should be
	 * copied from blk_rq_pos(rq).
	 */
	if (error_sector)
		*error_sector = bio->bi_iter.bi_sector;

	FUNC2(bio);
	return ret;
}