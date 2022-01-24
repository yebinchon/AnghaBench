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
struct rq_qos {int dummy; } ;
struct iolatency_grp {int dummy; } ;
struct blkcg_gq {struct blkcg_gq* parent; } ;
struct blk_iolatency {int /*<<< orphan*/  timer; } ;
struct bio {int bi_opf; struct blkcg_gq* bi_blkg; } ;

/* Variables and functions */
 struct blk_iolatency* FUNC0 (struct rq_qos*) ; 
 scalar_t__ HZ ; 
 int REQ_SWAP ; 
 int /*<<< orphan*/  FUNC1 (struct rq_qos*,struct iolatency_grp*,int,int) ; 
 int FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_iolatency*) ; 
 struct iolatency_grp* FUNC4 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC5 (struct iolatency_grp*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct rq_qos *rqos, struct bio *bio)
{
	struct blk_iolatency *blkiolat = FUNC0(rqos);
	struct blkcg_gq *blkg = bio->bi_blkg;
	bool issue_as_root = FUNC2(bio);

	if (!FUNC3(blkiolat))
		return;

	while (blkg && blkg->parent) {
		struct iolatency_grp *iolat = FUNC4(blkg);
		if (!iolat) {
			blkg = blkg->parent;
			continue;
		}

		FUNC5(iolat);
		FUNC1(rqos, iolat, issue_as_root,
				     (bio->bi_opf & REQ_SWAP) == REQ_SWAP);
		blkg = blkg->parent;
	}
	if (!FUNC7(&blkiolat->timer))
		FUNC6(&blkiolat->timer, jiffies + HZ);
}