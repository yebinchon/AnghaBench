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
struct throtl_service_queue {struct throtl_service_queue* parent_sq; scalar_t__* nr_queued; } ;
struct throtl_qnode {int dummy; } ;
struct throtl_grp {scalar_t__* last_low_overflow_time; int flags; struct throtl_service_queue service_queue; int /*<<< orphan*/ * io_disp; int /*<<< orphan*/ * bytes_disp; struct throtl_qnode* qnode_on_parent; int /*<<< orphan*/ * has_rules; struct throtl_data* td; } ;
struct throtl_data {int /*<<< orphan*/  track_bio_latency; int /*<<< orphan*/ * nr_queued; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  root_blkg; } ;
struct blkcg_gq {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_2__ bi_issue; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ISSUE_THROTL_SKIP_LATENCY ; 
 int /*<<< orphan*/  BIO_THROTTLED ; 
 int READ ; 
 int THROTL_TG_WAS_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t WRITE ; 
 int FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct throtl_grp*) ; 
 struct throtl_grp* FUNC5 (int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct throtl_grp* FUNC9 (struct throtl_service_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct throtl_grp*,struct bio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC14 (struct bio*,struct throtl_qnode*,struct throtl_grp*) ; 
 scalar_t__ FUNC15 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC16 (struct throtl_grp*,struct bio*) ; 
 int /*<<< orphan*/  FUNC17 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC18 (struct throtl_service_queue*,char*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct throtl_service_queue*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct throtl_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC23 (struct throtl_data*) ; 

bool FUNC24(struct request_queue *q, struct blkcg_gq *blkg,
		    struct bio *bio)
{
	struct throtl_qnode *qn = NULL;
	struct throtl_grp *tg = FUNC5(blkg ?: q->root_blkg);
	struct throtl_service_queue *sq;
	bool rw = FUNC1(bio);
	bool throttled = false;
	struct throtl_data *td = tg->td;

	FUNC0(!FUNC6());

	/* see throtl_charge_bio() */
	if (FUNC2(bio, BIO_THROTTLED) || !tg->has_rules[rw])
		goto out;

	FUNC7(&q->queue_lock);

	FUNC21(td);

	FUNC4(tg);

	sq = &tg->service_queue;

again:
	while (true) {
		if (tg->last_low_overflow_time[rw] == 0)
			tg->last_low_overflow_time[rw] = jiffies;
		FUNC17(tg);
		FUNC22(tg);
		/* throtl is FIFO - if bios are already queued, should queue */
		if (sq->nr_queued[rw])
			break;

		/* if above limits, break to queue */
		if (!FUNC12(tg, bio, NULL)) {
			tg->last_low_overflow_time[rw] = jiffies;
			if (FUNC15(td, tg)) {
				FUNC23(td);
				goto again;
			}
			break;
		}

		/* within limits, let's charge and dispatch directly */
		FUNC16(tg, bio);

		/*
		 * We need to trim slice even when bios are not being queued
		 * otherwise it might happen that a bio is not queued for
		 * a long time and slice keeps on extending and trim is not
		 * called for a long time. Now if limits are reduced suddenly
		 * we take into account all the IO dispatched so far at new
		 * low rate and * newly queued IO gets a really long dispatch
		 * time.
		 *
		 * So keep on trimming slice even if bio is not queued.
		 */
		FUNC20(tg, rw);

		/*
		 * @bio passed through this layer without being throttled.
		 * Climb up the ladder.  If we''re already at the top, it
		 * can be executed directly.
		 */
		qn = &tg->qnode_on_parent[rw];
		sq = sq->parent_sq;
		tg = FUNC9(sq);
		if (!tg)
			goto out_unlock;
	}

	/* out-of-limit, queue to @tg */
	FUNC18(sq, "[%c] bio. bdisp=%llu sz=%u bps=%llu iodisp=%u iops=%u queued=%d/%d",
		   rw == READ ? 'R' : 'W',
		   tg->bytes_disp[rw], bio->bi_iter.bi_size,
		   FUNC10(tg, rw),
		   tg->io_disp[rw], FUNC11(tg, rw),
		   sq->nr_queued[READ], sq->nr_queued[WRITE]);

	tg->last_low_overflow_time[rw] = jiffies;

	td->nr_queued[rw]++;
	FUNC14(bio, qn, tg);
	throttled = true;

	/*
	 * Update @tg's dispatch time and force schedule dispatch if @tg
	 * was empty before @bio.  The forced scheduling isn't likely to
	 * cause undue delay as @bio is likely to be dispatched directly if
	 * its @tg's disptime is not in the future.
	 */
	if (tg->flags & THROTL_TG_WAS_EMPTY) {
		FUNC13(tg);
		FUNC19(tg->service_queue.parent_sq, true);
	}

out_unlock:
	FUNC8(&q->queue_lock);
out:
	FUNC3(bio, BIO_THROTTLED);

#ifdef CONFIG_BLK_DEV_THROTTLING_LOW
	if (throttled || !td->track_bio_latency)
		bio->bi_issue.value |= BIO_ISSUE_THROTL_SKIP_LATENCY;
#endif
	return throttled;
}