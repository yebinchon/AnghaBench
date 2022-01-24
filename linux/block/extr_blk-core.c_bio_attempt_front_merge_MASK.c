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
struct request {int const cmd_flags; int /*<<< orphan*/  __data_len; int /*<<< orphan*/  __sector; struct bio* bio; int /*<<< orphan*/  q; } ;
struct TYPE_2__ {scalar_t__ bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio {int const bi_opf; TYPE_1__ bi_iter; struct bio* bi_next; } ;

/* Variables and functions */
 int const REQ_FAILFAST_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct request*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct request*,struct bio*) ; 

bool FUNC5(struct request *req, struct bio *bio,
		unsigned int nr_segs)
{
	const int ff = bio->bi_opf & REQ_FAILFAST_MASK;

	if (!FUNC2(req, bio, nr_segs))
		return false;

	FUNC4(req->q, req, bio);
	FUNC3(req->q, req, bio);

	if ((req->cmd_flags & REQ_FAILFAST_MASK) != ff)
		FUNC1(req);

	bio->bi_next = req->bio;
	req->bio = bio;

	req->__sector = bio->bi_iter.bi_sector;
	req->__data_len += bio->bi_iter.bi_size;

	FUNC0(req, false);
	return true;
}