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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  failed_writes; int /*<<< orphan*/  failed_reads; int /*<<< orphan*/  num_writes; int /*<<< orphan*/  num_reads; } ;
struct zram {TYPE_2__ stats; TYPE_1__* disk; } ;
struct request_queue {int dummy; } ;
struct bio_vec {int bv_len; int /*<<< orphan*/  bv_page; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  part0; struct request_queue* queue; } ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,unsigned int,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,unsigned int,int,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct zram*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct zram*,struct bio_vec*,int /*<<< orphan*/ ,int,struct bio*) ; 
 int FUNC8 (struct zram*,struct bio_vec*,int /*<<< orphan*/ ,int,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct zram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct zram*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct zram *zram, struct bio_vec *bvec, u32 index,
			int offset, unsigned int op, struct bio *bio)
{
	unsigned long start_time = jiffies;
	struct request_queue *q = zram->disk->queue;
	int ret;

	FUNC3(q, op, bvec->bv_len >> SECTOR_SHIFT,
			&zram->disk->part0);

	if (!FUNC4(op)) {
		FUNC0(&zram->stats.num_reads);
		ret = FUNC7(zram, bvec, index, offset, bio);
		FUNC1(bvec->bv_page);
	} else {
		FUNC0(&zram->stats.num_writes);
		ret = FUNC8(zram, bvec, index, offset, bio);
	}

	FUNC2(q, op, &zram->disk->part0, start_time);

	FUNC9(zram, index);
	FUNC6(zram, index);
	FUNC10(zram, index);

	if (FUNC5(ret < 0)) {
		if (!FUNC4(op))
			FUNC0(&zram->stats.failed_reads);
		else
			FUNC0(&zram->stats.failed_writes);
	}

	return ret;
}