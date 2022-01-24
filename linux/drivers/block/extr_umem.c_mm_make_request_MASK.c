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
struct request_queue {struct cardinfo* queuedata; } ;
struct cardinfo {int /*<<< orphan*/  lock; struct bio** biotail; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; scalar_t__ bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_opf; struct bio* bi_next; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC2 (struct cardinfo*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_qc_t FUNC7(struct request_queue *q, struct bio *bio)
{
	struct cardinfo *card = q->queuedata;
	FUNC4("mm_make_request %llu %u\n",
		 (unsigned long long)bio->bi_iter.bi_sector,
		 bio->bi_iter.bi_size);

	FUNC1(q, &bio);

	FUNC5(&card->lock);
	*card->biotail = bio;
	bio->bi_next = NULL;
	card->biotail = &bio->bi_next;
	if (FUNC3(bio->bi_opf) || !FUNC2(card))
		FUNC0(card);
	FUNC6(&card->lock);

	return BLK_QC_T_NONE;
}