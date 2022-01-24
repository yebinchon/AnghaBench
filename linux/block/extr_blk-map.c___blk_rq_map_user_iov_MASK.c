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
struct rq_map_data {int dummy; } ;
struct request_queue {int dummy; } ;
struct request {struct request_queue* q; } ;
struct iov_iter {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  REQ_OP_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (struct request_queue*,struct rq_map_data*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 struct bio* FUNC5 (struct request_queue*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct request*,struct bio**) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 

__attribute__((used)) static int FUNC8(struct request *rq,
		struct rq_map_data *map_data, struct iov_iter *iter,
		gfp_t gfp_mask, bool copy)
{
	struct request_queue *q = rq->q;
	struct bio *bio, *orig_bio;
	int ret;

	if (copy)
		bio = FUNC3(q, map_data, iter, gfp_mask);
	else
		bio = FUNC5(q, iter, gfp_mask);

	if (FUNC0(bio))
		return FUNC1(bio);

	bio->bi_opf &= ~REQ_OP_MASK;
	bio->bi_opf |= FUNC7(rq);

	orig_bio = bio;

	/*
	 * We link the bounce buffer in and could have to traverse it
	 * later so we have to get a ref to prevent it from being freed
	 */
	ret = FUNC6(rq, &bio);
	if (ret) {
		FUNC2(orig_bio);
		return ret;
	}
	FUNC4(bio);

	return 0;
}