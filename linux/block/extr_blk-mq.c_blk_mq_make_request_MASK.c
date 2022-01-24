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
struct request_queue {int nr_hw_queues; scalar_t__ elevator; TYPE_1__* mq_ops; } ;
struct request {TYPE_2__* mq_hctx; int /*<<< orphan*/  queuelist; } ;
struct TYPE_8__ {int /*<<< orphan*/  prev; } ;
struct blk_plug {unsigned int rq_count; TYPE_3__ mq_list; } ;
struct blk_mq_alloc_data {int cmd_flags; TYPE_2__* hctx; int /*<<< orphan*/  flags; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_7__ {int /*<<< orphan*/  dispatch_busy; } ;
struct TYPE_6__ {scalar_t__ commit_rqs; } ;

/* Variables and functions */
 unsigned int BLK_MAX_REQUEST_COUNT ; 
 scalar_t__ BLK_PLUG_FLUSH_SIZE ; 
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int REQ_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct bio**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*,struct request*) ; 
 scalar_t__ FUNC4 (struct request_queue*,struct bio*,unsigned int,struct request**) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*,struct bio*,unsigned int) ; 
 struct request* FUNC8 (struct request_queue*,struct bio*,struct blk_mq_alloc_data*) ; 
 struct blk_plug* FUNC9 (struct request_queue*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 scalar_t__ FUNC11 (struct request_queue*,struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct request*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC15 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC16 (struct request_queue*) ; 
 scalar_t__ FUNC17 (struct request*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_3__*) ; 
 struct request* FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,struct request*) ; 
 int /*<<< orphan*/  FUNC24 (struct request_queue*,struct bio*) ; 
 int /*<<< orphan*/  FUNC25 (struct request_queue*,struct bio*) ; 
 int /*<<< orphan*/  FUNC26 (struct request_queue*,struct request*,struct bio*) ; 
 int /*<<< orphan*/  FUNC27 (struct request_queue*,struct bio*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC29 (struct request_queue*,int,int) ; 
 scalar_t__ FUNC30 (int const) ; 

__attribute__((used)) static blk_qc_t FUNC31(struct request_queue *q, struct bio *bio)
{
	const int is_sync = FUNC22(bio->bi_opf);
	const int is_flush_fua = FUNC21(bio->bi_opf);
	struct blk_mq_alloc_data data = { .flags = 0};
	struct request *rq;
	struct blk_plug *plug;
	struct request *same_queue_rq = NULL;
	unsigned int nr_segs;
	blk_qc_t cookie;

	FUNC14(q, &bio);
	FUNC0(q, &bio, &nr_segs);

	if (!FUNC1(bio))
		return BLK_QC_T_NONE;

	if (!is_flush_fua && !FUNC15(q) &&
	    FUNC4(q, bio, nr_segs, &same_queue_rq))
		return BLK_QC_T_NONE;

	if (FUNC11(q, bio, nr_segs))
		return BLK_QC_T_NONE;

	FUNC25(q, bio);

	data.cmd_flags = bio->bi_opf;
	rq = FUNC8(q, bio, &data);
	if (FUNC30(!rq)) {
		FUNC24(q, bio);
		if (bio->bi_opf & REQ_NOWAIT)
			FUNC2(bio);
		return BLK_QC_T_NONE;
	}

	FUNC27(q, bio, bio->bi_opf);

	FUNC26(q, rq, bio);

	cookie = FUNC23(data.hctx, rq);

	FUNC7(rq, bio, nr_segs);

	plug = FUNC9(q, bio);
	if (FUNC30(is_flush_fua)) {
		/* bypass scheduler for flush rq */
		FUNC6(rq);
		FUNC10(data.hctx, true);
	} else if (plug && (q->nr_hw_queues == 1 || q->mq_ops->commit_rqs ||
				!FUNC16(q))) {
		/*
		 * Use plugging if we have a ->commit_rqs() hook as well, as
		 * we know the driver uses bd->last in a smart fashion.
		 *
		 * Use normal plugging if this disk is slow HDD, as sequential
		 * IO may benefit a lot from plug merging.
		 */
		unsigned int request_count = plug->rq_count;
		struct request *last = NULL;

		if (!request_count)
			FUNC28(q);
		else
			last = FUNC20(plug->mq_list.prev);

		if (request_count >= BLK_MAX_REQUEST_COUNT || (last &&
		    FUNC17(last) >= BLK_PLUG_FLUSH_SIZE)) {
			FUNC5(plug, false);
			FUNC28(q);
		}

		FUNC3(plug, rq);
	} else if (q->elevator) {
		FUNC12(rq, false, true, true);
	} else if (plug && !FUNC15(q)) {
		/*
		 * We do limited plugging. If the bio can be merged, do that.
		 * Otherwise the existing request in the plug list will be
		 * issued. So the plug list will have one request at most
		 * The plug list might get flushed before this. If that happens,
		 * the plug list is empty, and same_queue_rq is invalid.
		 */
		if (FUNC19(&plug->mq_list))
			same_queue_rq = NULL;
		if (same_queue_rq) {
			FUNC18(&same_queue_rq->queuelist);
			plug->rq_count--;
		}
		FUNC3(plug, rq);
		FUNC28(q);

		if (same_queue_rq) {
			data.hctx = same_queue_rq->mq_hctx;
			FUNC29(q, 1, true);
			FUNC13(data.hctx, same_queue_rq,
					&cookie);
		}
	} else if ((q->nr_hw_queues > 1 && is_sync) ||
			!data.hctx->dispatch_busy) {
		FUNC13(data.hctx, rq, &cookie);
	} else {
		FUNC12(rq, false, true, true);
	}

	return cookie;
}