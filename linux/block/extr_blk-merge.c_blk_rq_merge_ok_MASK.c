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
struct request {scalar_t__ rq_disk; scalar_t__ write_hint; scalar_t__ ioprio; int /*<<< orphan*/  bio; int /*<<< orphan*/  q; } ;
struct bio {scalar_t__ bi_disk; scalar_t__ bi_write_hint; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_WRITE_SAME ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct request*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 scalar_t__ FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 

bool FUNC9(struct request *rq, struct bio *bio)
{
	if (!FUNC8(rq) || !FUNC1(bio))
		return false;

	if (FUNC6(rq) != FUNC2(bio))
		return false;

	/* different data direction or already started, don't merge */
	if (FUNC0(bio) != FUNC7(rq))
		return false;

	/* must be same device */
	if (rq->rq_disk != bio->bi_disk)
		return false;

	/* only merge integrity protected bio into ditto rq */
	if (FUNC4(rq->q, rq, bio) == false)
		return false;

	/* must be using the same buffer */
	if (FUNC6(rq) == REQ_OP_WRITE_SAME &&
	    !FUNC5(rq->bio, bio))
		return false;

	/*
	 * Don't allow merge of different write hints, or for a hint with
	 * non-hint IO.
	 */
	if (rq->write_hint != bio->bi_write_hint)
		return false;

	if (rq->ioprio != FUNC3(bio))
		return false;

	return true;
}