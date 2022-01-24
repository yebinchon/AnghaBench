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
struct request_queue {unsigned long dma_pad_mask; } ;
struct request {struct bio* bio; int /*<<< orphan*/  rq_flags; } ;
struct iov_iter {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_USER_MAPPED ; 
 int EINVAL ; 
 int /*<<< orphan*/  RQF_COPY_USER ; 
 int FUNC0 (struct request*,struct rq_map_data*,struct iov_iter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct iov_iter const*) ; 
 scalar_t__ FUNC4 (struct iov_iter*) ; 
 int FUNC5 (struct iov_iter const*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter const*) ; 
 unsigned long FUNC7 (struct request_queue*) ; 
 int FUNC8 (struct request_queue*) ; 

int FUNC9(struct request_queue *q, struct request *rq,
			struct rq_map_data *map_data,
			const struct iov_iter *iter, gfp_t gfp_mask)
{
	bool copy = false;
	unsigned long align = q->dma_pad_mask | FUNC7(q);
	struct bio *bio = NULL;
	struct iov_iter i;
	int ret = -EINVAL;

	if (!FUNC6(iter))
		goto fail;

	if (map_data)
		copy = true;
	else if (FUNC3(iter) & align)
		copy = true;
	else if (FUNC8(q))
		copy = FUNC8(q) & FUNC5(iter);

	i = *iter;
	do {
		ret =FUNC0(rq, map_data, &i, gfp_mask, copy);
		if (ret)
			goto unmap_rq;
		if (!bio)
			bio = rq->bio;
	} while (FUNC4(&i));

	if (!FUNC2(bio, BIO_USER_MAPPED))
		rq->rq_flags |= RQF_COPY_USER;
	return 0;

unmap_rq:
	FUNC1(bio);
fail:
	rq->bio = NULL;
	return ret;
}