#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct rq_wait {int /*<<< orphan*/  wait; int /*<<< orphan*/  inflight; } ;
struct rq_qos {int dummy; } ;
struct iolatency_grp {scalar_t__ cur_win_nsec; int /*<<< orphan*/  window_start; scalar_t__ min_lat_nsec; struct rq_wait rq_wait; int /*<<< orphan*/  blkiolat; } ;
struct blkcg_gq {struct blkcg_gq* parent; } ;
struct bio {scalar_t__ bi_status; int /*<<< orphan*/  bi_issue; struct blkcg_gq* bi_blkg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TRACKED ; 
 scalar_t__ BLK_STS_AGAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bio*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct iolatency_grp* FUNC7 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC8 (struct iolatency_grp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct iolatency_grp*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct rq_qos *rqos, struct bio *bio)
{
	struct blkcg_gq *blkg;
	struct rq_wait *rqw;
	struct iolatency_grp *iolat;
	u64 window_start;
	u64 now = FUNC11(FUNC10());
	bool issue_as_root = FUNC5(bio);
	bool enabled = false;
	int inflight = 0;

	blkg = bio->bi_blkg;
	if (!blkg || !FUNC4(bio, BIO_TRACKED))
		return;

	iolat = FUNC7(bio->bi_blkg);
	if (!iolat)
		return;

	enabled = FUNC6(iolat->blkiolat);
	if (!enabled)
		return;

	while (blkg && blkg->parent) {
		iolat = FUNC7(blkg);
		if (!iolat) {
			blkg = blkg->parent;
			continue;
		}
		rqw = &iolat->rq_wait;

		inflight = FUNC3(&rqw->inflight);
		FUNC0(inflight < 0);
		/*
		 * If bi_status is BLK_STS_AGAIN, the bio wasn't actually
		 * submitted, so do not account for it.
		 */
		if (iolat->min_lat_nsec && bio->bi_status != BLK_STS_AGAIN) {
			FUNC9(iolat, &bio->bi_issue, now,
					      issue_as_root);
			window_start = FUNC2(&iolat->window_start);
			if (now > window_start &&
			    (now - window_start) >= iolat->cur_win_nsec) {
				if (FUNC1(&iolat->window_start,
					     window_start, now) == window_start)
					FUNC8(iolat, now);
			}
		}
		FUNC12(&rqw->wait);
		blkg = blkg->parent;
	}
}