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
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  rq_flags; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  REQ_OP_MASK ; 
 int /*<<< orphan*/  RQF_COPY_USER ; 
 struct bio* FUNC2 (struct request_queue*,void*,unsigned int,int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC3 (struct request_queue*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,unsigned long,unsigned int) ; 
 int FUNC6 (struct request*,struct bio**) ; 
 scalar_t__ FUNC7 (void*) ; 
 int FUNC8 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct request_queue *q, struct request *rq, void *kbuf,
		    unsigned int len, gfp_t gfp_mask)
{
	int reading = FUNC10(rq) == READ;
	unsigned long addr = (unsigned long) kbuf;
	int do_copy = 0;
	struct bio *bio, *orig_bio;
	int ret;

	if (len > (FUNC8(q) << 9))
		return -EINVAL;
	if (!len || !kbuf)
		return -EINVAL;

	do_copy = !FUNC5(q, addr, len) || FUNC7(kbuf);
	if (do_copy)
		bio = FUNC2(q, kbuf, len, gfp_mask, reading);
	else
		bio = FUNC3(q, kbuf, len, gfp_mask);

	if (FUNC0(bio))
		return FUNC1(bio);

	bio->bi_opf &= ~REQ_OP_MASK;
	bio->bi_opf |= FUNC9(rq);

	if (do_copy)
		rq->rq_flags |= RQF_COPY_USER;

	orig_bio = bio;
	ret = FUNC6(rq, &bio);
	if (FUNC11(ret)) {
		/* request is too big */
		FUNC4(orig_bio);
		return ret;
	}

	return 0;
}