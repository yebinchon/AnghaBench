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
struct request {unsigned int cmd_flags; int rq_flags; struct bio* bio; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {unsigned int bi_opf; TYPE_1__ bi_iter; struct bio* bi_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int REQ_FAILFAST_MASK ; 
 int RQF_MIXED_MERGE ; 
 unsigned int FUNC1 (struct request const*) ; 

unsigned int FUNC2(const struct request *rq)
{
	unsigned int ff = rq->cmd_flags & REQ_FAILFAST_MASK;
	unsigned int bytes = 0;
	struct bio *bio;

	if (!(rq->rq_flags & RQF_MIXED_MERGE))
		return FUNC1(rq);

	/*
	 * Currently the only 'mixing' which can happen is between
	 * different fastfail types.  We can safely fail portions
	 * which have all the failfast bits that the first one has -
	 * the ones which are at least as eager to fail as the first
	 * one.
	 */
	for (bio = rq->bio; bio; bio = bio->bi_next) {
		if ((bio->bi_opf & ff) != ff)
			break;
		bytes += bio->bi_iter.bi_size;
	}

	/* this could lead to infinite loop */
	FUNC0(FUNC1(rq) && !bytes);
	return bytes;
}