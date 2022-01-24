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
typedef  int u64 ;
struct rsxx_cardinfo {int /*<<< orphan*/  halt; int /*<<< orphan*/  dma_fault; int /*<<< orphan*/  gendisk; } ;
struct rsxx_bio_meta {int /*<<< orphan*/  pending_dmas; int /*<<< orphan*/  start_time; int /*<<< orphan*/  error; struct bio* bio; } ;
struct request_queue {struct rsxx_cardinfo* queuedata; } ;
struct TYPE_2__ {scalar_t__ bi_size; scalar_t__ bi_sector; } ;
struct bio {scalar_t__ bi_status; TYPE_1__ bi_iter; } ;
typedef  scalar_t__ blk_status_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 scalar_t__ BLK_STS_IOERR ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  bio_dma_done_cb ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  bio_meta_pool ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char,struct rsxx_bio_meta*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsxx_cardinfo*,struct bio*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct rsxx_bio_meta* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct rsxx_bio_meta*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (struct rsxx_cardinfo*,struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rsxx_bio_meta*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_qc_t FUNC15(struct request_queue *q, struct bio *bio)
{
	struct rsxx_cardinfo *card = q->queuedata;
	struct rsxx_bio_meta *bio_meta;
	blk_status_t st = BLK_STS_IOERR;

	FUNC5(q, &bio);

	FUNC12();

	if (!card)
		goto req_err;

	if (FUNC3(bio) > FUNC9(card->gendisk))
		goto req_err;

	if (FUNC14(card->halt))
		goto req_err;

	if (FUNC14(card->dma_fault))
		goto req_err;

	if (bio->bi_iter.bi_size == 0) {
		FUNC7(FUNC0(card), "size zero BIO!\n");
		goto req_err;
	}

	bio_meta = FUNC10(bio_meta_pool, GFP_KERNEL);
	if (!bio_meta) {
		st = BLK_STS_RESOURCE;
		goto req_err;
	}

	bio_meta->bio = bio;
	FUNC1(&bio_meta->error, 0);
	FUNC1(&bio_meta->pending_dmas, 0);
	bio_meta->start_time = jiffies;

	if (!FUNC14(card->halt))
		FUNC8(card, bio);

	FUNC6(FUNC0(card), "BIO[%c]: meta: %p addr8: x%llx size: %d\n",
		 FUNC2(bio) ? 'W' : 'R', bio_meta,
		 (u64)bio->bi_iter.bi_sector << 9, bio->bi_iter.bi_size);

	st = FUNC13(card, bio, &bio_meta->pending_dmas,
				    bio_dma_done_cb, bio_meta);
	if (st)
		goto queue_err;

	return BLK_QC_T_NONE;

queue_err:
	FUNC11(bio_meta_pool, bio_meta);
req_err:
	if (st)
		bio->bi_status = st;
	FUNC4(bio);
	return BLK_QC_T_NONE;
}