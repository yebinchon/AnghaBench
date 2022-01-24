#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  invalid_io; } ;
struct zram {TYPE_2__ stats; } ;
struct request_queue {struct zram* queuedata; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct zram*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct zram*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_qc_t FUNC4(struct request_queue *queue, struct bio *bio)
{
	struct zram *zram = queue->queuedata;

	if (!FUNC3(zram, bio->bi_iter.bi_sector,
					bio->bi_iter.bi_size)) {
		FUNC1(&zram->stats.invalid_io);
		goto error;
	}

	FUNC0(zram, bio);
	return BLK_QC_T_NONE;

error:
	FUNC2(bio);
	return BLK_QC_T_NONE;
}